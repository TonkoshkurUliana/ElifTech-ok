package ua.lviv.lgs.project.butcher.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.lgs.project.butcher.domain.User;
import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {
    List<User> findByEmail(String email);
}
