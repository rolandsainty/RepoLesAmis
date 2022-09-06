package org.encheres.dal;

import org.encheres.bo.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.Optional;
@Transactional

@Repository
public interface UserRepository extends JpaRepository<Utilisateur, Integer> {

  Utilisateur findByPseudoAndMotDePasse(String pseudo, String motDePasse);
}
