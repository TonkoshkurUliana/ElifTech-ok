package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import project.domain.User;
import project.domain.Bucket;
import project.domain.Product;
import project.service.BucketService;
import project.service.ProductService;
import project.service.UserService;

import java.util.Date;
import java.util.List;

@Controller
public class BucketController {

    @Autowired
    private BucketService bucketService;

    @Autowired
    private UserService userService;

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/buckets", method = RequestMethod.GET)
    public ModelAndView getAllItems() {
        return getBucketItems();
    }

    @RequestMapping(value = "/bucket", method = RequestMethod.POST)
    public ModelAndView create(@RequestParam String productId) {
        Product product = productService.findById(Integer.parseInt(productId));

        Bucket bucket = new Bucket();
        bucket.setProduct(product);
        bucket.setPurchaseDate(new Date());

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userEmail = auth.getName();
        User user = userService.findByEmail(userEmail);
        bucket.setUser(user);

        bucketService.add(bucket);

        return new ModelAndView("redirect:/index#!/pageBucket");
    }

    @RequestMapping(value = "/bucket", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam String id) {
        bucketService.delete(new Bucket(Integer.parseInt(id.replaceAll("\\s",""))));
       return new ModelAndView("redirect:/index#!/pageBucket");
    }

    private ModelAndView getBucketItems() {
        ModelAndView map = new ModelAndView("index#!/pageBucket");
        map.addObject("bucketItems", bucketService.getAll());
        return map;
    }



}