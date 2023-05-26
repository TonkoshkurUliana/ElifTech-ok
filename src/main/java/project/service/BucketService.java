package project.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.domain.Bucket;
import project.dao.BucketRepository;
import project.domain.Product;

import java.util.List;


@Service
public class BucketService {
    private Logger logger = LoggerFactory.getLogger(BucketService.class);

    @Autowired
    private BucketRepository bucketRepository;

    @Autowired
    private  ProductService productService;

    public List<Bucket> getAll() {
        logger.info("Get all buckets items");
        return bucketRepository.findAll();
    }

    public void delete(Bucket bucket) {
        logger.info("Delete bucket item {} : " + bucket);
        bucketRepository.delete(bucket);
    }

    public Bucket add(Bucket bucket) {
        logger.info("Create new bucket item {}: " + bucket);
        return bucketRepository.save(bucket);
    }

}