package service.impl;

import domain.User;
import service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Override
    public List<User> findAll() {
        // 调用 Dao完成查询
        return null;
    }
}
