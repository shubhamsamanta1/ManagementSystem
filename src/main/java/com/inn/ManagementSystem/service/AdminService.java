package com.inn.ManagementSystem.service;

import com.inn.ManagementSystem.model.AdminUser;
import com.inn.ManagementSystem.repository.AdminUserRepo;
import com.inn.ManagementSystem.constants.MasterConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class AdminService {

    @Autowired
    AdminUserRepo adminUserRepo;

    public String Login(String email, String password) {

        if (!(adminUserRepo.findByEmail(email).isEmpty()) && !(adminUserRepo.findByPassword(password).isEmpty())) {
            return MasterConstants.BOTH_PRESENT;
        } else if ((adminUserRepo.findByEmail(email).isEmpty()) && !(adminUserRepo.findByPassword(password).isEmpty())) {
            return MasterConstants.INCORRECT_EMAIL;
        } else if (!(adminUserRepo.findByEmail(email).isEmpty()) && (adminUserRepo.findByPassword(password).isEmpty())) {
            return MasterConstants.INCORRECT_PASSWORD;
        }
        return MasterConstants.USER_DOSENT_EXIST;
    }

    public String createUser(String name, String email, String password){
        if(adminUserRepo.findByEmail(email).isEmpty()){

            AdminUser user = new AdminUser();
            user.setEmail(email);
            user.setPassword(password);
            user.setName(name);
            adminUserRepo.save(user);
            return MasterConstants.USER_CREATED_SUCCESSFULLY;

        }
        return MasterConstants.EMAIL_EXIST;

    }

}