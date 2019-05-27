package com.duoxik.controller;

import com.duoxik.entity.Node;
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

    @GetMapping("/showChildren/id{id}")
    public String getChildrenById(@PathVariable int id, Model model) {
        model.addAttribute("nodes", treeService.getChildrenById(id));
        return "part";
    }

    @GetMapping(value = "/deleteNode/id{id}", produces = "plain/text")
    @ResponseBody
    public String deleteNode(@PathVariable int id) {
        //TODO transaction validation
        treeService.removeNode(id);
        return "true";
    }

    @PostMapping(value = "/addNode", produces = "plain/text")
    @ResponseBody
    public String addNode(@ModelAttribute("node") Node node) {
        //TODO input args validation
        //TODO transaction validation
        treeService.addNode(node);
        return "true";
    }

    @PostMapping(value = "/updateNode", produces = "plain/text")
    @ResponseBody
    public String updateNode(@ModelAttribute("node") Node node) {
        //TODO input args validation
        //TODO transaction validation
        treeService.updateNode(node);
        return "true";
    }
}
