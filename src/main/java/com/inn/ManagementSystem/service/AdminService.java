package com.inn.ManagementSystem.service;

import com.inn.ManagementSystem.model.AdminUser;
import com.inn.ManagementSystem.repository.AdminUserRepo;
import com.inn.ManagementSystem.constants.MasterConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public String createUser(String name, String email, String password, String userType){
        if(adminUserRepo.findByEmail(email).isEmpty()){
            AdminUser user = new AdminUser();
            user.setEmail(email);
            user.setPassword(password);
            user.setName(name);
            user.setUserType(userType);
            adminUserRepo.save(user);
            return MasterConstants.USER_CREATED_SUCCESSFULLY;

        }
        return MasterConstants.EMAIL_EXIST;

    }

    public String userRole(String email){
        AdminUser adminUser = (adminUserRepo.findByEmail(email)).get(0);
        return adminUser.userType;
    }

    public String userName(String email){
        AdminUser adminUser = (adminUserRepo.findByEmail(email)).get(0);
        return adminUser.name;
    }


}