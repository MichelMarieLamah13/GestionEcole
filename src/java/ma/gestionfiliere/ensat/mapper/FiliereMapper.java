/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import ma.gestionfiliere.ensat.model.Filiere;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author lamah
 */
public class FiliereMapper implements RowMapper<Filiere>{
    @Override
    public Filiere mapRow(ResultSet rs, int i) throws SQLException {
        Filiere f = new Filiere();
        
        f.setIdFiliere(rs.getInt("idFiliere"));
        f.setCode(rs.getString("code"));
        f.setDesignation(rs.getString("designation"));
        f.setDescription(rs.getString("description"));
        
        return f;
    }
}
