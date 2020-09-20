package com.kgc.lo.controller;

import com.kgc.lo.pojo.Pet;
import com.kgc.lo.service.PetService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    PetService petService;

    @RequestMapping("/chushi")
    public String chushi(Model model) {
        List<Pet> pets = petService.selectAll();
        List<Pet> xiala = petService.selectAll();
        model.addAttribute("xiala", xiala);
        model.addAttribute("pet", pets);
        return "index";
    }

    @RequestMapping("/mocha")
    public String mocha(String pinzhong, Model model) {
        List<Pet> pets = petService.selectByBread(pinzhong);
        List<Pet> xiala = petService.selectAll();
        model.addAttribute("xiala", xiala);
        model.addAttribute("pet", pets);
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        List<Pet> xiala = petService.selectAll();
        model.addAttribute("xiala", xiala);
        return "add";
    }

    @RequestMapping("/addover")
    public String addover(Model model, Pet pet) {
        petService.insert(pet);
        List<Pet> pets = petService.selectAll();
        List<Pet> xiala = petService.selectAll();
        model.addAttribute("xiala", xiala);
        model.addAttribute("pet", pets);
        int jie=1;
        model.addAttribute("jie",jie);
        return "index";
    }

}
