package org.encheres.dal;

import org.encheres.bo.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleVenduRepository extends JpaRepository<Article, Integer> {
}
