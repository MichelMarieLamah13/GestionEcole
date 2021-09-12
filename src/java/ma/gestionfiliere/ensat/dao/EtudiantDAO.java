/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.dao;

import java.util.ArrayList;
import java.util.List;
import ma.gestionfiliere.ensat.mapper.EtudiantMapper;
import ma.gestionfiliere.ensat.model.Etudiant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class EtudiantDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private JavaMailSender mailSender;

    public String create(Etudiant etudiant) {
        String msg;
        try {
            jdbcTemplate.update("insert into etudiant(nom, prenom, sexe, date_naissance, adresse, email, codeApogee, cne, nationalite, photo, idFiliere) "
                    + "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                    new Object[]{etudiant.getNom(), etudiant.getPrenom(), etudiant.getSexe(), etudiant.getDate_naissance(),
                        etudiant.getAdresse(), etudiant.getEmail(), etudiant.getCodeApogee(), etudiant.getCne(), etudiant.getNationalite(),
                        etudiant.getPhoto(), etudiant.getIdFiliere()
                    });
            msg = "Success";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }
        return msg;
    }

    public String update(Etudiant etudiant) {
        String msg;
        try {
            jdbcTemplate.update("update etudiant set nom=?, prenom=?, sexe=?, date_naissance=?, adresse=?, email=?, codeApogee=?, cne=?, nationalite=?, photo=?, idFiliere=?) ",
                    new Object[]{etudiant.getNom(), etudiant.getPrenom(), etudiant.getSexe(), etudiant.getDate_naissance(),
                        etudiant.getAdresse(), etudiant.getEmail(), etudiant.getCodeApogee(), etudiant.getCne(), etudiant.getNationalite(),
                        etudiant.getPhoto(), etudiant.getIdFiliere(), etudiant.getIdEtudiant()
                    });
            msg = "Success";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }
        return msg;
    }

    public String delete(int id) {
        String msg;
        try {
            jdbcTemplate.update("delete from etudiant where idEtudiant = ?", new Object[]{id});
            msg = "Success";
        } catch (Exception ex) {
            msg = "Error: " + ex.getMessage();
        }

        return msg;
    }

    public Etudiant find(int id) {
        Etudiant e = null;
        try {
            e = jdbcTemplate.queryForObject("select * from etudiant where idEtudiant = ?", new Object[]{id},
                    new EtudiantMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return e;
    }

    public List<Etudiant> findAll() {
        List<Etudiant> etudiants = new ArrayList<>();
        try {
            etudiants = jdbcTemplate.query("select * from etudiant", new EtudiantMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return etudiants;
    }

    public String sendto(String recipient, String message, String subject) {
        String msg;
        try {
            // creates a simple e-mail object
            SimpleMailMessage email = new SimpleMailMessage();
            email.setTo(recipient);
            email.setSubject(subject);
            email.setText(message);
            JavaMailSenderImpl x = (JavaMailSenderImpl) mailSender;
            System.out.println("Email: " + x.getUsername());
            System.out.println("Password: " + x.getPassword());
            mailSender.send(email);
            msg = "Message envoyé avec succès";
        } catch (Exception e) {
            msg = "Erreur lors de l'envoie du message: " + e.getMessage();
        }
        return msg;
    }

    public List<Etudiant> findIdFiliere(int id) {
        List<Etudiant> e = null;
        try {
            e = jdbcTemplate.query("select * from etudiant where idFiliere = ?", new Object[]{id},
                    new EtudiantMapper());
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        return e;
        }
}
