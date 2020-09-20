package com.kgc.controller;

import com.kgc.pojo.Pet;
import com.kgc.service.PetService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-09-19 17:12
 */
@Controller
public class PetController {
    @Resource
    PetService petService;
    @RequestMapping("/")
    public String toPet(){
        return "pet";
    }
    @RequestMapping("toAdd")
    public String toAdd(){

        return "Add";
    }
    @RequestMapping("selectAll")
    @ResponseBody
    public Map<String,Object> selectAll(String petBreed){
        Map<String,Object> map=new HashMap<>();
        List<Pet> pets = petService.pList(petBreed);
        map.put("data",pets);
        return map;
    }
    @RequestMapping("add")
    @ResponseBody
    public Map<String,Object> add(Pet pet){
        Map<String,Object> map=new HashMap<>();
        int ins = petService.ins(pet);
        if (ins>0){
            map.put("success","true");
        }else{
            map.put("success","false");
        }

        return map;
    }

}
