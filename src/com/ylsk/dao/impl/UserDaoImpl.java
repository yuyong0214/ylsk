
package com.ylsk.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ylsk.dao.UserDao;
import com.ylsk.mapper.UserMapper;
import com.ylsk.po.User;

@Repository
public class UserDaoImpl implements UserDao
{
    @Autowired
    private UserMapper userMapper;

    @Override
    public void save(User user)
    {
        userMapper.saveUser(user);
    }

    @Override
    public User findUserById(int id)
    {
        User user = userMapper.selectUserById(id);
        return user;
    }

    @Override
    public List<User> query()
    {
        List<User> list = userMapper.query();
        return list;
    }

    @Override
    public User findByUsername(String username)
    {
        User user = userMapper.findByUsername(username);
        return user;
    }

    @Override
    public void updateLoginTime(Integer id)
    {
        userMapper.updateLoginTime(id);

    }

}
