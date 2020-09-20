package com.kgc.lo.pojo;

import java.util.Date;

public class Pet {
    private Integer petId;

    private String petName;

    private String petBread;

    private String petSex;

    private Date birthday;

    private String description;

    public Pet() {
    }

    public Pet(Integer petId, String petName, String petBread, String petSex, Date birthday) {
        this.petId = petId;
        this.petName = petName;
        this.petBread = petBread;
        this.petSex = petSex;
        this.birthday = birthday;
    }

    public Pet(Integer petId, String petName, String petBread, String petSex, Date birthday, String description) {
        this.petId = petId;
        this.petName = petName;
        this.petBread = petBread;
        this.petSex = petSex;
        this.birthday = birthday;
        this.description = description;
    }

    public Integer getPetId() {
        return petId;
    }

    public void setPetId(Integer petId) {
        this.petId = petId;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName == null ? null : petName.trim();
    }

    public String getPetBread() {
        return petBread;
    }

    public void setPetBread(String petBread) {
        this.petBread = petBread == null ? null : petBread.trim();
    }

    public String getPetSex() {
        return petSex;
    }

    public void setPetSex(String petSex) {
        this.petSex = petSex == null ? null : petSex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}