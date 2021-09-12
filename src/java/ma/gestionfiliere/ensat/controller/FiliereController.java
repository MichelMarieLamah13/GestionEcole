/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.controller;

import java.util.List;
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
public class FiliereController {

    @Autowired
    private FiliereService filiereService;
    @Autowired
    private EtudiantService etudiantService;
    
    //Ajouter
    @RequestMapping(value = "/add/filiere", method = RequestMethod.POST)
    public String addFiliere(ModelMap model, @ModelAttribute Filiere filiere) {
        String msg = filiereService.create(filiere);
        System.out.println(filiere);
        model.addAttribute("msg", msg);
        return "redirect:/filiere";
    }

    //Lister
    @RequestMapping(value = "/filiere")
    public ModelAndView listFiliere(ModelMap model1) {
        ModelAndView model = new ModelAndView("admin/Filieres/filieres");
        List<Filiere> filieres = filiereService.findAll();
        model1.addAttribute("PageName", "Gestion Filière");
        model.addObject("filieres", filieres);
        return model;
    }
    
    //Update
    @RequestMapping(value = "/UpdateFieliere", method = RequestMethod.POST)
    public String updateFiliere(@ModelAttribute Filiere filiere) {
        System.out.println(filiere);
        String msg = filiereService.update(filiere);
        ModelAndView model = new ModelAndView("ListFiliere");
        model.addObject("msg", msg);
        List<Filiere> filieres = filiereService.findAll();
        model.addObject("filieres", filieres);
        return "redirect:/filiere";
    }
    
    //Delete
    @RequestMapping(value = "/DeleteFiliere", method = RequestMethod.POST )
    public String deleteTeacher(@ModelAttribute Filiere f) {
        System.out.println("delte--------------------");
        System.out.println(f.getIdFiliere());
        String msg = filiereService.delete(f.getIdFiliere());
        
        return "redirect:/filiere";
    }
    
    //ShowFiliere
    @RequestMapping(value = "/getfiliere/{id}", method = RequestMethod.GET)
    public String getFiliere(@PathVariable("id") int id, ModelMap model) {
        model.addAttribute("id", id);
       
        Filiere filiere = filiereService.find(id);
        model.addAttribute("filiere", filiere);
        model.addAttribute("PageName", "Gestion Filière");
        List<Etudiant> etudiants = etudiantService.findIdFiliere(id);
        model.addAttribute("etudiants", etudiants);
        model.addAttribute("Filieres", filiereService.findAll());
        return "admin/Filieres/showfiliere";
    }
}
