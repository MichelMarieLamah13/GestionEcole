/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import ma.gestionfiliere.ensat.model.User;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author lamah
 */
public class UserMapper implements RowMapper<User>{
    @Override
    public User mapRow(ResultSet rs, int i) throws SQLException {
        User u = new User();

        u.setIdUser(rs.getInt("idUser"));
        u.setLogin(rs.getString("login"));
        u.setPassword(rs.getString("password"));
        u.setRole(rs.getString("role"));
        u.setIdEtudiant(rs.getInt("idEtudiant"));
        
        return u;
    }
}
