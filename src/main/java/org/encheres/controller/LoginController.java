package org.encheres.controller;

import org.encheres.bll.GestionUtilisateur;
import org.encheres.bo.Utilisateur;
import org.encheres.dal.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.validation.Valid;
import java.util.logging.Logger;

@Controller
@SessionAttributes(value = "user")

public class LoginController {
    @Autowired
    private SessionLocaleResolver localeResolver;

    @Autowired
    private UserRepository utilisateurDao;

    @Autowired
    private MessageSource message;

    private static Logger logger = Logger.getLogger("loginController");

//depuis la page login sans utilisateur en session
// l'on remplit le formulaire avec le pseudo et le nom de pass
    //l'on verifie que l'utilisateur existe en base
    //si oui : le charger en session
    //si nom : reafficher la page avec les champs a vide

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String routageVersLogin(Model mm) {
        mm.addAttribute("user", new Utilisateur());
        return "login";
    }

    @RequestMapping(value = "/connexion", method = RequestMethod.POST)
    public ModelAndView connexionUser(@Valid @ModelAttribute("user") Utilisateur user, BindingResult errors) {

        //si user.login && user.password

        //recherche un utilisateur de la base de données qui a pour login user.login et pwd
   user = utilisateurDao.findByPseudoAndMotDePasse(user.getPseudo(), user.getMotDePasse());

            //si oui
        if (user != null){
            // routage avec chargement en session de l'utilisattur bdd'
            ModelAndView mav = new ModelAndView("afficherProfil", "user",user);
        return mav;
        } else{
            //sinon routage vers ecran de connexion  + message eventuel
            ModelAndView mav = new ModelAndView("accueil", "user",new Utilisateur());
            logger.warning("utilisateur inconnu");
            return mav;
        }

    }
    @RequestMapping(value = "/fermetureSession", method = RequestMethod.GET)
    public String deconnecterUtilisateur(SessionStatus status) {
        status.setComplete();
        return "accueil";

    }
    }

