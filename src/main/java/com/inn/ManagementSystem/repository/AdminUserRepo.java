package com.inn.ManagementSystem.repository;

import com.inn.ManagementSystem.model.AdminUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminUserRepo extends JpaRepository<AdminUser, Long> {

    public List<AdminUser> findByEmail(String email);

    public List<AdminUser> findByPassword(String password);

    @Query(value = "SELECT * FROM admin_user u where u.user_type = ?1", nativeQuery = true)
    List<AdminUser> findCount(String usertype);
}
