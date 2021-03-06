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
        List<Node> children = getChildrenById(id);
        treeDao.removeNode(id);
        for (Node node : children) {
            removeNode(node.getId());
        }
    }

    @Override
    public void updateNode(Node node) {
        Node parentNode = treeDao.getNodeById(node.getParent_id());
        if (parentNode != null) {
            treeDao.updateNode(node);
        } else {
            throw new IllegalArgumentException();
        }
    }
}
