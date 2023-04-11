package ua.lviv.lgs.project.butcher.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.lviv.lgs.project.butcher.dao.ProductRepository;
import ua.lviv.lgs.project.butcher.domain.Product;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

@Service
public class ProductService {
    private Logger logger = LoggerFactory.getLogger(ProductService.class);

    @Autowired
    private ProductRepository productRepository;

    public Product save(Product product) {
        logger.info("Create  item {} : " + product);
        return productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        logger.info("Get all items");
        return productRepository.findAll();
    }

    public Product findById(Integer id) {
        logger.info("Get item by id: " + id);
        return productRepository.findById(id).get();
    }
}
