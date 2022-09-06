package org.encheres.bll;

import org.encheres.bo.Categorie;
import org.encheres.dal.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GestionCategorie {

   @Autowired
   CategorieRepository dao;


    public List<Categorie> listeCategories() {
        return dao.findAll();

}
public Categorie trouverCategorie(int id) {

        return dao.getOne(id);
}


    public void ajouterCategorie(Categorie c) {

        dao.save(c);
    }

    public void modifierCategorie (Categorie c) {

        dao.save(c);
    }
    public void supprimerCategorie (Categorie c) {

        dao.delete(c);
    }
    public List<Categorie> trier(String type){
        List<Categorie> liste = null;
        switch (type){
            case "cA" : liste = dao.findByOrderByNoCategorieAsc(); break;
            case "cD" : liste = dao.findByOrderByNoCategorieDesc(); break;
            case "lA" : liste = dao.findByOrderByLibelleAsc(); break;
            case "lD" : liste = dao.findByOrderByLibelleDesc(); break;
            default : liste = dao.findAll();
        }
        return liste;
    }

}
