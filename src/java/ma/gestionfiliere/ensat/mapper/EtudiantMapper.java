/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import ma.gestionfiliere.ensat.model.Etudiant;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author lamah
 */
public class EtudiantMapper implements RowMapper<Etudiant> {

    @Override
    public Etudiant mapRow(ResultSet rs, int i) throws SQLException {
        Etudiant e = new Etudiant();

        e.setIdEtudiant(rs.getInt("idEtudiant"));
        e.setNom(rs.getString("nom"));
        e.setPrenom(rs.getString("prenom"));
        e.setSexe(rs.getString("sexe"));
        e.setDate_naissance(rs.getDate("date_naissance"));
        e.setAdresse(rs.getString("adresse"));
        e.setEmail(rs.getString("email"));
        e.setCodeApogee(rs.getString("codeApogee"));
        e.setCne(rs.getString("cne"));
        e.setNationalite(rs.getString("nationalite"));
        e.setPhoto(rs.getString("photo"));
        e.setIdFiliere(rs.getInt("idFiliere"));

        return e;
    }
}
