package com.kgc.service.impl;

import com.kgc.mapper.PetMapper;
import com.kgc.pojo.Pet;
import com.kgc.pojo.PetExample;
import com.kgc.service.PetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-19 17:02
 */
@Service("petService")
public class PetServiceImpl implements PetService {
    @Resource
    PetMapper petMapper;
    @Override
    public List<Pet> pList(String petBreed) {

        PetExample petExample=new PetExample();
        PetExample.Criteria criteria = petExample.createCriteria();
        if (petBreed!=""){
            criteria.andPetBreedEqualTo(petBreed);
        }
        List<Pet> pets = petMapper.selectByExample(petExample);
        return pets;
    }

    @Override
    public int ins(Pet pet) {
        int i = petMapper.insertSelective(pet);
        return i;
    }

}
