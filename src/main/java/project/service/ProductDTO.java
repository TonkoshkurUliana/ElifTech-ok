package project.service;

import org.springframework.web.multipart.MultipartFile;
import project.domain.Product;

import java.io.IOException;
import java.util.Base64;

public class ProductDTO {
    public static Product createEntity(MultipartFile file, String name, String information,String category, Double price) throws IOException {
        Product product = new Product();
        product.setName(name);
        product.setInformation(information);
        product.setPrice(price);
        product.setCategory(category);
        product.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));

        return product;
    }
}
