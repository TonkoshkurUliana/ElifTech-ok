package project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import project.service.ProductDTO;
import project.service.ProductService;

import java.io.IOException;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public ModelAndView createProduct(
            @RequestParam MultipartFile image,
            @RequestParam String name,
            @RequestParam String information,
            @RequestParam String category,
            @RequestParam Double price) throws IOException {

        productService.save(ProductDTO.createEntity(image, name, information, category, price));
        return new ModelAndView("redirect:/index");
    }
}