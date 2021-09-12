/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.service;

import java.util.List;
import ma.gestionfiliere.ensat.dao.FiliereDAO;
import ma.gestionfiliere.ensat.model.Filiere;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FiliereService {
    @Autowired
    private FiliereDAO filiereDao;

    public Filiere find(int id) {
        return filiereDao.find(id);
    }

    public List<Filiere> findAll() {
        return filiereDao.findAll();
    }
    

    public String create(Filiere filiere) {
        return filiereDao.create(filiere);
    }

    public String update(Filiere filiere) {
        return filiereDao.update(filiere);
    }

    public String delete(int id) {
        return filiereDao.delete(id);
    }

}
