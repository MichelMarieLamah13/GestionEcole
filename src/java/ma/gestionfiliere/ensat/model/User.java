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
public class User {
    private Integer idUser;
    private String login;
    private String password;
    private String role;
    private Integer idEtudiant;

    public User() {
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setIdEtudiant(Integer idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public Integer getIdEtudiant() {
        return idEtudiant;
    }
    
    @Override
    public String toString(){
        return idUser+"---"+idEtudiant+"---"+ login+"---"+password+"---"+role;
    }
    
}
