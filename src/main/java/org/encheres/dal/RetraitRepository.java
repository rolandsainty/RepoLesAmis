package org.encheres.dal;

import org.encheres.bo.Retrait;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface RetraitRepository extends JpaRepository<Retrait, Integer> {
}
