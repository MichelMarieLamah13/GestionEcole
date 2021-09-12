/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.model;

/**
 *
 * @author user
 */
public class Filiere {
    private Integer idFiliere;
    private String code;
    private String designation;
    private String description;

    public Filiere() {
    }

    public void setIdFiliere(Integer idFiliere) {
        this.idFiliere = idFiliere;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setNom(String designation) {
        this.designation = designation;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getIdFiliere() {
        return idFiliere;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getCode() {
        return code;
    }

    public String getDesignation() {
        return designation;
    }

    public String getDescription() {
        return description;
    }
    
    public String toString(){
        return idFiliere+"---"+code+"---"+designation+"----"+description;
    }
    
}
