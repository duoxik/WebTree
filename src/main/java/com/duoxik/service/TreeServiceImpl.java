package com.duoxik.service;

import com.duoxik.dao.TreeDao;
import com.duoxik.entity.Node;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TreeServiceImpl implements TreeService {

    @Autowired
    public TreeDao treeDao;

    @Override
    public List<Node> getAllNodes() {
        return treeDao.getAllNodes();
    }

    @Override
    public List<Node> getChildrenById(int id) {
        return treeDao.getChildrenById(id);
    }

    @Override
    public void addNode(Node node) {
        treeDao.addNode(node);
    }

    @Override
    public void removeNode(int id) {
        treeDao.removeNode(id);
    }

    @Override
    public void updateNode(Node node) {
        treeDao.updateNode(node);
    }
}
