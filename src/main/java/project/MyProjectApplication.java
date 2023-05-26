package project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import project.domain.Product;
import project.service.ProductService;
import project.service.UserService;

@SpringBootApplication
public class MyProjectApplication {

    public static void main(String[] args) {

        SpringApplication.run(MyProjectApplication.class, args);
    }

}
