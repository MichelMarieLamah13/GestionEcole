/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.dao;

import java.util.ArrayList;
import java.util.List;
import ma.gestionfiliere.ensat.mapper.FiliereMapper;
import ma.gestionfiliere.ensat.model.Filiere;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class FiliereDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public String create(Filiere filiere) {
        String msg;
        try {
            jdbcTemplate.update("insert into filiere(code, designation, description) values(?, ?, ?)",
                    new Object[]{filiere.getCode(), filiere.getDesignation(), filiere.getDescription()});
            msg = "Added Successfully";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }

        return msg;
    }

    public String update(Filiere filiere) {
        String msg;
        try {
            jdbcTemplate.update("update filiere set code=?, designation=?, description=? where idFiliere=?",
                    new Object[]{filiere.getCode(), filiere.getDesignation(), filiere.getDescription(), filiere.getIdFiliere()});
            msg = "Success";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }

        return msg;
    }

    public String delete(int id) {
        String msg;
        try {
            jdbcTemplate.update("delete from filiere where idFiliere = ?", new Object[]{id});
            msg = "Success";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }

        return msg;
    }

    public Filiere find(int id) {
        Filiere f = null;
        try {
            f = jdbcTemplate.queryForObject("select * from filiere where idFiliere = ?", new Object[]{id},
                    new FiliereMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return f;
    }

    public List<Filiere> findAll() {
        List<Filiere> filieres = new ArrayList<>();
        try {
            filieres = jdbcTemplate.query("select * from filiere", new FiliereMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return filieres;
    }
    

}
