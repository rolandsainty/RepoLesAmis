package org.encheres.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(value = "user")
public class AfficherProfilController {

 @RequestMapping(value="/afficherProfil", method= RequestMethod.GET)
    public String routageVersAfficherProfil(){
  return "afficherProfil";
 }

}
