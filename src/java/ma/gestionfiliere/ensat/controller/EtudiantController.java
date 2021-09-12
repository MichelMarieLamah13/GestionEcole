/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import ma.gestionfiliere.ensat.model.Etudiant;
import ma.gestionfiliere.ensat.model.Filiere;
import ma.gestionfiliere.ensat.service.EtudiantService;
import ma.gestionfiliere.ensat.service.FiliereService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EtudiantController {

    @Autowired
    private EtudiantService etudiantService;
    @Autowired
    private FiliereService filiereService;
    
    @RequestMapping(value = "/etudiant")
    public String Page(ModelMap model,HttpServletRequest request) {
        model.addAttribute("Etudiants", etudiantService.findAll());
        model.addAttribute("PageName", "Gestion des Etudiants");
        model.addAttribute("Filieres", filiereService.findAll());
        return "admin/Etudiants/etudiants";
    
    }
    //Ajouter
    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(ModelMap model, @ModelAttribute Etudiant etudiant) {
        System.out.println(etudiant);
        etudiantService.create(etudiant);
        return "redirect:/getfiliere/"+etudiant.getIdFiliere();
    }
    
    //Delete
    @RequestMapping(value = "/deleteEtudiant", method = RequestMethod.POST )
    public String deleteEtudiant(@ModelAttribute Etudiant e, @ModelAttribute Filiere f) {
        System.out.println(e.getIdEtudiant());
        System.out.println(f.getIdFiliere());
        etudiantService.delete(e.getIdEtudiant());
        return "redirect:/getfiliere/"+f.getIdFiliere();
    }
    //Update
    @RequestMapping(value = "/EditStudent", method = RequestMethod.POST)
    public String updateEtudiant(@ModelAttribute Etudiant etudiant) {
        etudiantService.update(etudiant);
        return "redirect:/etudiant";
    }

    //ShowStudent
    @RequestMapping(value = "/getstudent/{id}", method = RequestMethod.GET)
    public String getFiliere(@PathVariable("id") int id, ModelMap model) {
        model.addAttribute("etudiant", etudiantService.find(id));
        model.addAttribute("Filieres", filiereService.findAll());
        return "admin/Etudiants/showStudent";
    }

    
}
