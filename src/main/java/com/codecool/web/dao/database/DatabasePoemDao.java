package com.codecool.web.dao.database;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;
import com.codecool.web.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabasePoemDao extends AbstractDao implements PoemDao {
    
    public DatabasePoemDao(Connection connection) {
        super(connection);
    }
    
    @Override
    public List<Poem> findAll() throws SQLException {
        String sql = "SELECT id, user_id, title, poem FROM poems";
        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            List<Poem> poems = new ArrayList<>();
            while (resultSet.next()) {
                poems.add(fetchPoem(resultSet));
            }
            return poems;
        }
    }
    
    @Override
    public List<Poem> findAllByUser(int userId) throws SQLException {
        List<Poem> poems = new ArrayList<>();
        String sql = "SELECT id, user_id, title, poem FROM poems WHERE user_id=?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    poems.add(fetchPoem(resultSet));
                }
            }
        }
        return poems;
    }
    
    @Override
    public Poem findById(int id) throws SQLException {
        return null;
    }
    
    @Override
    public Poem add(int id, int userId, String title, String poem) throws SQLException {
        return null;
    }
    
    private Poem fetchPoem(ResultSet resultSet) throws SQLException {
        
        int id = resultSet.getInt("id");
        int userId = resultSet.getInt("user_id");
        String title = resultSet.getString("title");
        String poem = resultSet.getString("poem");
        return new Poem(id, userId, title, poem);
    }
}
