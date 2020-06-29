package service;

import domain.User;

import java.util.List;
import java.util.Map;

/**
 * 用户管理的业务接口
 */

public interface UserService {

    // Query all user information
    public List<User> findAll();

    //Log in
    User login(User user);

    // Save User
    void addUser(User user);

    // Delete User
    void deleteUser(String id);

    // 根据id查询
    User findUserById(String id);

    // 修改用户信息
    void updateUser(User user);

}
