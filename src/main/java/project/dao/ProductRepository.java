package project.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import project.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
