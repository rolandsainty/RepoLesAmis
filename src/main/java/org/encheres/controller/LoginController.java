package org.encheres.controller;

import org.encheres.bo.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;


import javax.validation.Valid;
import java.util.Locale;

@Controller
@SessionAttributes(value = "user")
public class LoginController {
    @Autowired
    private SessionLocaleResolver localeResolver;




    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String routageVersLogin(Model mm) {
        mm.addAttribute("user", new Utilisateur());
        return "login";
    }
    /*
    @RequestMapping(value = "/login", method = RequestMethod.GET)
        public String routageVersLogin(@ModelAttribute("user") Utilisateur user) {
            ModelAttribute = new Utilisateur();
        return new ModelAndView("inscription", "user", user);
    }
*/
    @RequestMapping(value = "/connexion", method = RequestMethod.POST)

    public String connexionUser( @ModelAttribute("user") Utilisateur user) {
            return "afficherProfil";
        }

    }

