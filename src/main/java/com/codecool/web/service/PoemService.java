package com.codecool.web.service;

import com.codecool.web.model.Poem;

import java.sql.SQLException;
import java.util.List;

public interface PoemService {
    
    List<Poem> getPoemsByUser(int userId) throws SQLException;
    
    Poem getPoemById(int id) throws SQLException;
}
