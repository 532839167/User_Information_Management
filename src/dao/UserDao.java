package dao;

/*
 * 操作的 dao
 */

import domain.User;

import java.util.List;

public interface UserDao {

    public List<User> findAll();

    User findUserByUsernameAndPassword(String username, String password);

    void add(User user);

    void delete(int id);

    User findById(int id);

    void update(User user);
}
