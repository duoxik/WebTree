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
}
