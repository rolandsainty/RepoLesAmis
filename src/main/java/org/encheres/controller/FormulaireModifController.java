package org.encheres.controller;

import org.encheres.bo.Utilisateur;
import org.encheres.dal.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes(value = "user")
public class FormulaireModifController {

    @Autowired
    UserRepository utilDao;
    @RequestMapping(value="/modifFormulaire", method= RequestMethod.GET)
    public String modifProfil(){
        return "modifFormulaire";
    }
    // Valider modification utilisateur après click sur bouton Enregistrer
    @RequestMapping(value="/modifFormulaire", method= RequestMethod.POST, params="save")
    public String updateUtilisateur(@ModelAttribute("user") Utilisateur utilEnSession){
        utilDao.save(utilEnSession);
        return "accueilInterne"; // TODO : créer jsp accueilInterne
    }
    //Supprimer utilisateur en session après click sur bouton supprimer
    @RequestMapping(value = "/modifFormulaire", method = RequestMethod.POST, params="delete")
    public  String deleteUtilisateur(@ModelAttribute("user") Utilisateur utilEnSession) {
        utilDao.delete(utilEnSession);
        return "accueil";
    }
}

