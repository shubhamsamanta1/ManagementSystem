package com.inn.ManagementSystem.Controller;

import com.inn.ManagementSystem.constants.MasterConstants;
import com.inn.ManagementSystem.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/SignIn")
    public String SignIn(String email , String password, RedirectAttributes redirectAttributes, Model model) {
        if (!email.isEmpty() && !password.isEmpty()) {
            if(adminService.Login(email,password).equals(MasterConstants.BOTH_PRESENT)) {
                if(adminService.userRole(email).equals(MasterConstants.ORG_USER)){
                    return "redirect:/OrgDashboard?username=" + adminService.userName(email);
                } else if (adminService.userRole(email).equals(MasterConstants.INST_USER)) {
                    return "redirect:/InstDashboard?username=" + adminService.userName(email);
                }
            } else if (adminService.Login(email,password).equals(MasterConstants.INCORRECT_EMAIL)) {
                redirectAttributes.addFlashAttribute("errorMessage", "Email Id is Incorrect");
                return "redirect:/login";
            }else if (adminService.Login(email,password).equals(MasterConstants.INCORRECT_PASSWORD)) {
                redirectAttributes.addFlashAttribute("errorMessage", "Password is Incorrect");
                return "redirect:/login";
            }else if (adminService.Login(email,password).equals(MasterConstants.USER_DOSENT_EXIST)) {
                redirectAttributes.addFlashAttribute("errorMessage", "User Doesn't exist, please create a new user.");
                return "redirect:/login";
            }
        }
        return "redirect:/login";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/createUser")
    public String saveUser(String name, String email, String password , String userType, RedirectAttributes redirectAttributes){
        if(!userType.equals("none")) {
            if (adminService.createUser(name, email, password, userType).equals(MasterConstants.USER_CREATED_SUCCESSFULLY)) {

                redirectAttributes.addFlashAttribute("successMessage", "User is created successfully.");
                return "redirect:/login";

            }
            redirectAttributes.addFlashAttribute("errorMessage", "Email already Exists.");
            return "redirect:/register";
        }
        redirectAttributes.addFlashAttribute("errorMessage", "Please Choose a valid user type");
        return "redirect:/register";
    }

    @GetMapping("/OrgDashboard")
    public String OrgDashboard (@RequestParam String username, Model model ){
        model.addAttribute("username", username);
        return "OrgDashboard";
    }

    @GetMapping("/InstDashboard")
    public String InstDashboard (@RequestParam String username, Model model ){
        model.addAttribute("username", username);
        return "InstDashboard";
    }


}
