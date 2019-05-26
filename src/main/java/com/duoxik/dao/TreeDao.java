package com.duoxik.dao;

import com.duoxik.entity.Node;

import java.util.List;

public interface TreeDao {
    List<Node> getAllNodes();
    List<Node> getChildrenById(int id);
}
