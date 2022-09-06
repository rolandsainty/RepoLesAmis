package org.encheres.bll;

import org.encheres.bo.Utilisateur;
import org.encheres.dal.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GestionUtilisateur {

    @Autowired
    UserRepository utilisateurDao;

    public Utilisateur trouverUtilisateurParPseudoEtLogin(String pseudo, String motDePasse){
    return utilisateurDao.findByPseudoAndMotDePasse(pseudo, motDePasse);
     }


}
