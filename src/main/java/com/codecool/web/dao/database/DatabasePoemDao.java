package com.codecool.web.dao.database;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class DatabasePoemDao extends AbstractDao implements PoemDao {
    
    public DatabasePoemDao(Connection connection) {
        super(connection);
    }
    
    @Override
    public List<Poem> findAll() throws SQLException {
        return null;
    }
    
    @Override
    public List<Poem> findAllByUser(int userId) throws SQLException {
        return null;
    }
    
    @Override
    public Poem findById(int id) throws SQLException {
        return null;
    }
    
    @Override
    public Poem add(int id, int userId, String title, String poem) throws SQLException {
        return null;
    }
}
