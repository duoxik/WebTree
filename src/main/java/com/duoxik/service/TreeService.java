package com.duoxik.service;

import com.duoxik.entity.Node;

import java.util.List;

public interface TreeService {
    List<Node> getAllNodes();
    List<Node> getChildrenById(int id);
    void addNode(Node node);
    void removeNode(int id);
    void updateNode(Node node);
}
