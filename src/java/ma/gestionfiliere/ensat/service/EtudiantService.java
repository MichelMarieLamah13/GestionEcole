/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.service;

import java.util.List;
import ma.gestionfiliere.ensat.dao.EtudiantDAO;
import ma.gestionfiliere.ensat.model.Etudiant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EtudiantService {
    @Autowired
    private EtudiantDAO etudiantDao;

    public Etudiant find(int id) {
        return etudiantDao.find(id);
    }

    public List<Etudiant> findAll() {
        return etudiantDao.findAll();
    }
    

    public String create(Etudiant etudiant) {
        return etudiantDao.create(etudiant);
    }

    public String update(Etudiant etudiant) {
        return etudiantDao.update(etudiant);
    }

    public String delete(int id) {
        return etudiantDao.delete(id);
    }

    public String sendto(String recipient, String message, String subject){
        return etudiantDao.sendto(recipient, message, subject);
    }

    public List<Etudiant> findIdFiliere(int id) {
        return etudiantDao.findIdFiliere(id);
        }
}
