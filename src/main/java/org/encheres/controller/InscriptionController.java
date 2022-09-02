package org.encheres.controller;
import org.encheres.bo.Utilisateur;
import org.encheres.dal.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;


@Controller
@SessionAttributes(value = "user")

public class InscriptionController {

@Autowired
    UserRepository utilisateursRepository;

    @RequestMapping(value = "/inscription", method = RequestMethod.GET)

    public ModelAndView appelInscription() {
        Utilisateur user = new Utilisateur("lili28");
        return new ModelAndView("inscription", "user", user);
    }

    //chargement d'utilisateur en session apres remplissage des champs et click sur boutton validation
    @RequestMapping(value = "/addUtilisateur", method = RequestMethod.POST)
    public  String CreerUtilisateur(@Valid @ModelAttribute("user")Utilisateur user, BindingResult result) {

        // validation et enregistrer le user
        if(result.hasErrors()){
            return "inscription";
        } else {
            utilisateursRepository.save(user);
            return "afficherProfil";
        }

    }

/*
    @RequestMapping(value = "/addUtilisateur", method = RequestMethod.POST)

    public  String validerFormulaire(@ModelAttribute("user")Utilisateur user) {

        return "accueil";


    }
    */

}

