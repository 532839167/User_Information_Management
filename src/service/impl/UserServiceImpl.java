package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;
import service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserDao dao = new UserDaoImpl();

    @Override
    public List<User> findAll() {
        // 调用 Dao完成查询
        return dao.findAll();
    }

    @Override
    public User login(User user) {
        return dao.findUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public void addUser(User user) {
        dao.add(user);
    }

    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
        return dao.findById(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

}
