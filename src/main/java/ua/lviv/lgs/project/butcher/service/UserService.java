package ua.lviv.lgs.project.butcher.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ua.lviv.lgs.project.butcher.dao.UserRepository;
import ua.lviv.lgs.project.butcher.domain.User;
import ua.lviv.lgs.project.butcher.domain.UserRole;

@Service
public class UserService {

    @Autowired

    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;

    public void save(User user) {

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
//        user.setPassword(bCryptPasswordEncoder.encode(user.getPasswordConfirm()));
        user.setRole(UserRole.USER);
        userRepository.save(user);
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email).get();
    }
}
