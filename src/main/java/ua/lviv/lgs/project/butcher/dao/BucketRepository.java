package ua.lviv.lgs.project.butcher.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.project.butcher.domain.Bucket;

public interface BucketRepository extends JpaRepository<Bucket, Integer> {
}
