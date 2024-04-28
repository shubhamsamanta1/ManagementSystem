package com.inn.ManagementSystem.repository;

import com.inn.ManagementSystem.model.StudentUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentUserRepo extends JpaRepository<StudentUser, Long> {


}