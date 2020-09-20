package com.kgc.lo.service;

import com.kgc.lo.pojo.Pet;

import java.util.List;

public interface PetService {
    List<Pet> selectAll();
    List<Pet> selectByBread(String bread);
    int insert(Pet pet);
}
