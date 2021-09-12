/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.controller;

import javax.servlet.http.HttpServletRequest;
import ma.gestionfiliere.ensat.model.User;
import ma.gestionfiliere.ensat.service.EtudiantService;
import ma.gestionfiliere.ensat.service.FiliereService;
import ma.gestionfiliere.ensat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private EtudiantService etudiantService;
    @Autowired
    private FiliereService filiereService;

    @RequestMapping(value = "/")
    public ModelAndView home() {
        
        ModelAndView model = new ModelAndView("login");
        return model;
    }
    

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginPage(@ModelAttribute User user) {
        System.out.println(user.getLogin()+" "+user.getPassword());
        User u =userService.findByLoginAndPassword(user.getLogin(), user.getPassword());
        if(u!=null){
 
            return "redirect:/dashboard";
            
        }
        else
           return "redirect:/"; 
    }

    @RequestMapping(value = "/dashboard")
    public String dashboardPage(ModelMap model) {
       
        model.addAttribute("Etudiants", etudiantService.findAll());
        model.addAttribute("Filieres", filiereService.findAll());
        model.addAttribute("nbrAdmin", userService.findAll().size());
        model.addAttribute("PageName", "Tableau de Bord");

        return "admin/dashboard";
       
    }

    @RequestMapping(value = "/administrateur")
    public String adminPage(ModelMap model,@ModelAttribute("errorMsg") String errorMsg,@ModelAttribute("successMsg") String successMsg) {
        
        model.addAttribute("Admins", userService.findAll());
        model.addAttribute("errorMsg", errorMsg);
        model.addAttribute("successMsg",successMsg);
        model.addAttribute("isLogin",true);
        return "admin/Administrateurs/admin";
        
        
        
    }

    @RequestMapping(value = "/AddUser", method = RequestMethod.POST)
    public String addUser(@ModelAttribute User user, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        
        String msg,errorMsg=null,successMsg=null;
        if (request.getParameter("confirmation").equals(user.getPassword())) {
            user.setRole("admin");
            msg = userService.create(user);
            if(msg==null)
            {
                errorMsg="Erreur d'ajout de l'administrateur";
            }
            else
               successMsg=msg; 
        } else {
             errorMsg = "Erreur de saisie de mot de passe";
        }
        redirectAttributes.addFlashAttribute("errorMsg", errorMsg);
        redirectAttributes.addFlashAttribute("successMsg", successMsg);
        
        return "redirect:/administrateur";
        
    }

   
    
    

}
