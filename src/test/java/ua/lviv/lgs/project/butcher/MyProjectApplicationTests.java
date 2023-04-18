package ua.lviv.lgs.project.butcher;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import ua.lviv.lgs.project.butcher.dao.UserRepository;
import ua.lviv.lgs.project.butcher.domain.Product;
import ua.lviv.lgs.project.butcher.domain.User;
import ua.lviv.lgs.project.butcher.domain.UserRole;
import ua.lviv.lgs.project.butcher.service.BucketService;
import ua.lviv.lgs.project.butcher.service.ProductService;
import ua.lviv.lgs.project.butcher.service.UserService;

import static org.hamcrest.MatcherAssert.*;
import static org.hamcrest.collection.IsCollectionWithSize.*;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Optional;

@SpringBootTest
class MyProjectApplicationTests {
    @Autowired
    UserService userService;

    @Autowired
    ProductService productService;

    @Autowired
    BucketService bucketService;

    @Autowired
    UserRepository userRepository;
    @Test
    void userSave() {
        List<User> users = userRepository.findAll();
        assertThat(users, hasSize(4));

        User user = new User();
        user.setRole(UserRole.ROLE_USER);
        user.setFirstName("Test");
        user.setLastName("Test");
        user.setEmail("test@gmail.com");
        user.setPassword("test");

        userService.save(user);

        users = userRepository.findAll();
        assertThat(users, hasSize(5));

        User userFromDB = users.get(4);
        assertTrue(userFromDB.getEmail().equals(user.getEmail()));
        assertTrue(userFromDB.getFirstName().equals(user.getFirstName()));
        assertTrue(userFromDB.getLastName().equals(user.getLastName()));
        assertTrue(userFromDB.getPassword().equals(user.getPassword()));

        User userEmail = userRepository.findByEmail("test@gmail.com").get();
        assertTrue(userEmail.getEmail().equals(user.getEmail()));
        assertTrue(userEmail.getFirstName().equals(user.getFirstName()));
        assertTrue(userEmail.getLastName().equals(user.getLastName()));
        assertTrue(userEmail.getPassword().equals(user.getPassword()));

    }
    void productSave() {

        List<Product> products = productService.getAllProducts();
        assertThat(products, hasSize(9));

        Product product = new Product();
        product.setName("test");
        product.setInformation("test");
        product.setPrice(22.22);
        product.setCategory("test");

        productService.save(product);

        products = productService.getAllProducts();
        assertThat(products, hasSize(10));

        Product productFromDB = products.get(9);
        assertTrue(productFromDB.getCategory().equals(product.getCategory()));
        assertTrue(productFromDB.getInformation().equals(product.getInformation()));
        assertTrue(productFromDB.getName().equals(product.getName()));
    }


}
