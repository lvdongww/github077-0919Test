package com.kgc.service;

import com.kgc.pojo.Pet;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-19 17:01
 */
public interface PetService {
    List<Pet> pList(String petBreed);
    int ins(Pet pet);
}
