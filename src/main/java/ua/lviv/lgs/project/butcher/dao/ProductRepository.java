package ua.lviv.lgs.project.butcher.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.project.butcher.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
