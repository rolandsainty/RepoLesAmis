package org.encheres.dal;

import org.encheres.bo.Enchere;
import org.encheres.bo.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface EnchereRepository extends JpaRepository<Enchere, Integer> {
}
