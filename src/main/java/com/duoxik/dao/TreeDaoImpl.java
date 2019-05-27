package com.duoxik.dao;

import com.duoxik.entity.Node;
import com.duoxik.mapper.TreeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TreeDaoImpl implements TreeDao {

    @Autowired
    public JdbcTemplate jdbcTemplate;

    @Override
    public List<Node> getAllNodes() {
        String sql = "SELECT * FROM tree";
        return jdbcTemplate.query(sql, new TreeMapper());
    }

    @Override
    public List<Node> getChildrenById(int id) {
        String sql = "SELECT * FROM tree WHERE parent_id=?";
        return jdbcTemplate.query(sql, new TreeMapper(), id);
    }

    @Override
    public void addNode(Node node) {
        String sql = "INSERT INTO tree (value, parent_id) VALUES (?, ?)";
        jdbcTemplate.update(sql, node.getValue(), node.getParent_id());
    }

    @Override
    public void removeNode(int id) {
        String sql = "DELETE FROM tree WHERE id=? OR parent_id=?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public void updateNode(Node node) {
        String sql = "UPDATE tree SET value=?, parent_id=? WHERE id=?";
        jdbcTemplate.update(sql, node.getValue(), node.getParent_id(), node.getId());
    }
}
