/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.gestionfiliere.ensat.service;

import java.util.List;
import ma.gestionfiliere.ensat.dao.UserDAO;
import ma.gestionfiliere.ensat.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDAO userDao;

    public User find(int id) {
        return userDao.find(id);
    }

    public User findByLoginAndPassword(String login, String password) {
        return userDao.findByLoginAndPassword(login, password);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public String create(User user) {
        return userDao.create(user);
    }

  

}
