package com.kgc.lo.service.impl;

import com.kgc.lo.mapper.PetMapper;
import com.kgc.lo.pojo.Pet;
import com.kgc.lo.pojo.PetExample;
import com.kgc.lo.service.PetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("petService")
public class PetServiceImpl implements PetService {
    @Resource
    PetMapper petMapper;
    @Override
    public List<Pet> selectAll() {
        List<Pet> pets = petMapper.selectByExample(null);
        return pets;
    }

    @Override
    public List<Pet> selectByBread(String bread) {
        PetExample petExample=new PetExample();
        PetExample.Criteria criteria = petExample.createCriteria();
        criteria.andPetBreadLike(bread);
        List<Pet> pets = petMapper.selectByExample(petExample);
        return pets;
    }

    @Override
    public int insert(Pet pet) {
        petMapper.insertSelective(pet);
        return 0;
    }


}
