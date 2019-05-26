package com.duoxik.mapper;

import com.duoxik.entity.Node;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TreeMapper implements RowMapper<Node> {

    @Override
    public Node mapRow(ResultSet resultSet, int i) throws SQLException {
        Node node = new Node();
        node.setId(resultSet.getInt("id"));
        node.setValue(resultSet.getString("value"));
        node.setParent_id(resultSet.getInt("parent_id"));
        return node;
    }
}
