package com.duoxik.service;

import com.duoxik.entity.Node;

import java.util.List;

public interface TreeService {
    List<Node> getAllNodes();
    List<Node> getChildrenById(int id);
}
