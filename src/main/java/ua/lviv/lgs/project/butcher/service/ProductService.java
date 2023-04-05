package ua.lviv.lgs.project.butcher.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.lgs.project.butcher.dao.ProductRepository;
import ua.lviv.lgs.project.butcher.domain.Product;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Product save(Product product) {
//        logger.info("Create periodical item {} : " + periodical);
        return productRepository.save(product);
    }

    public List<Product> getAllProducts() {
//        logger.info("Get all periodicals items");
        return productRepository.findAll();
    }

    public Product findById(Integer id) {
//        logger.info("Get periodical item by id: " + id);
        return productRepository.findById(id).get();
    }
}
