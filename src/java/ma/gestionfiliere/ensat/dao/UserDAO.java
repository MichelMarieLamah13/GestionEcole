/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.dao;

import java.util.ArrayList;
import java.util.List;
import ma.gestionfiliere.ensat.mapper.UserMapper;
import ma.gestionfiliere.ensat.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public String create(User user) {
        String msg;
        try {
            jdbcTemplate.update("insert into user(login, password, role, idEtudiant) values(?, ?, ?, ?)",
                    new Object[]{user.getLogin(), user.getPassword(), user.getRole(), user.getIdEtudiant()});

            msg = "Administrateur ajouté avec succès";
        } catch (Exception ex) {
            msg = null;
        }

        return msg;
    }
    public User find(int id) {
        User u = null;
        try {
            u = jdbcTemplate.queryForObject("select * from user where idUser = ?", new Object[]{id},
                    new UserMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return u;
    }

    public User findByLoginAndPassword(String login, String password) {
        User u = null;
        try {
            u = jdbcTemplate.queryForObject("select * from user where login = ? and password=?",
                    new Object[]{login, password},
                    new UserMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return u;
    }

    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        try {
            users = jdbcTemplate.query("select * from user", new UserMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return users;
    }

}
