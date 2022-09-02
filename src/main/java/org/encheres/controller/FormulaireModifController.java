package org.encheres.controller;

import org.encheres.bo.Utilisateur;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
@Controller

@SessionAttributes(value = "user")
public class FormulaireModifController {

    @RequestMapping(value="/modifFormulaire", method= RequestMethod.GET)
    public ModelAndView modifProfil(){
        Utilisateur utilEnSession = new Utilisateur("lili28","Legrand","Lisa","email","telephone","rue","code postal","ville","mot de passe","credit");
        ModelAndView mav = new ModelAndView("modifFormulaire","user",utilEnSession);
        return mav;
    }

   @RequestMapping(value="/modifFormulaire", method= RequestMethod.POST)
    public String validerModif(@ModelAttribute("user") Utilisateur utilEnSession){

            return"success";
    }
}

