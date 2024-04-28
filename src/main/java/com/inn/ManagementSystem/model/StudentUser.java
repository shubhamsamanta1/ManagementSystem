package com.inn.ManagementSystem.model;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@Table(name = "ProfileUser")
@AllArgsConstructor
@NoArgsConstructor
public class StudentUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    @Column(name = "fName")
    public String fName;

    @Column(name = "mName")
    public String mName;

    @Column(name = "lName")
    public String lName;

    @Column(name = "dob")
    public Date dob;

    @Column(name = "gender")
    public String gender;

    @Column(name = "guardianName")
    public String guardianName;

    @Column(name = "email")
    public String email;

    @Column(name = "contact")
    public int contact;

    @Column(name = "address")
    public String address;

    @Column(name = "pin_code")
    public int pin_code;

    @Column(name="profileType")
    public String profileType;

    @Column(name = "section")
    public String section;

    @Column(name = "std")
    public String std;

    @Column(name = "feeCharged")
    public int feeCharged;

    @Column(name = "paymentCycle")
    public Date paymentCycle;
}
