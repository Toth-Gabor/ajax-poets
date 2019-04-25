package com.codecool.web.service.simple;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;
import com.codecool.web.service.PoemService;

import java.sql.SQLException;
import java.util.List;

public class SimplePoemService implements PoemService {
    
    private final PoemDao poemDao;
    
    public SimplePoemService(PoemDao poemDao) {
        this.poemDao = poemDao;
    }
    
    @Override
    public List<Poem> getPoemsByUser(int userId) throws SQLException {
        return poemDao.findAllByUser(userId);
    }
    
    @Override
    public Poem getPoemById(int id) throws SQLException {
        return poemDao.findById(id);
    }
}
