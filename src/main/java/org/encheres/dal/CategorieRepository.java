package org.encheres.dal;

import org.encheres.bo.Categorie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategorieRepository extends JpaRepository<Categorie, Integer> {
    public List<Categorie> findByOrderByNoCategorieAsc ();
    public List<Categorie>findByOrderByNoCategorieDesc ();
    public List<Categorie>findByOrderByLibelleAsc ();
    public List<Categorie>findByOrderByLibelleDesc ();
}
