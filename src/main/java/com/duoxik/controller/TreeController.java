package com.duoxik.controller;

import com.duoxik.service.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class TreeController {

    @Autowired
    public TreeService treeService;

    @GetMapping("/")
    public String getAllUsers(Model model) {
        model.addAttribute("nodes", treeService.getAllNodes());
        return "index";
    }

    @GetMapping("/showChildren/{id}")
    public String getChildrenById(@PathVariable int id, Model model) {
        model.addAttribute("nodes", treeService.getChildrenById(id));
        return "part";
    }
}
