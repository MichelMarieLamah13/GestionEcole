/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.model;

import java.sql.Date;

/**
 *
 * @author user
 */
public class Etudiant {
    private Integer idEtudiant;
    private String nom;
    private String prenom;
    private String sexe;
    private Date date_naissance;
    private String adresse;
    private String Email;
    private String codeApogee;
    private String cne;
    private String photo;
    private String nationalite;
    private int idFiliere;

    public Etudiant() {
    }

    public void setIdEtudiant(Integer idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setCodeApogee(String codeApogee) {
        this.codeApogee = codeApogee;
    }

    public void setCne(String cne) {
        this.cne = cne;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public void setIdFiliere(Integer idFiliere) {
        this.idFiliere = idFiliere;
    }

    public int getIdEtudiant() {
        return idEtudiant;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getSexe() {
        return sexe;
    }

    public Date getDate_naissance() {
        return date_naissance;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getEmail() {
        return Email;
    }

    public String getCodeApogee() {
        return codeApogee;
    }

    public String getCne() {
        return cne;
    }

    public String getPhoto() {
        return photo;
    }

    public String getNationalite() {
        return nationalite;
    }

    public int getIdFiliere() {
        return idFiliere;
    }
    
    @Override
    public String toString(){
        return idEtudiant+"--"+idFiliere+"--"+ nom+"---"+prenom+"---"+sexe+"--"+date_naissance+"--"+adresse+"--"+Email+"--"+codeApogee+"--"+cne+"--"+photo+"--"+nationalite ;
    } 
    
}
