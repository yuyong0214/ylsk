
package com.ylsk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ylsk.dao.UserDao;
import com.ylsk.po.User;

/**
 * @项目名称：ssm01
 * @类名称：UserService
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月11日 下午5:27:54
 * @修改人：YUY
 * @修改时间：2017年9月11日 下午5:27:54
 * @修改备注：
 * @version
 */
@Service
public class UserService
{
    @Autowired
    private UserDao userDao;

    /**
     * 方法描述：IoC 容器使用属性的setter方法来注入被依赖的实例
     * 
     * @author YUY
     * @创建时间：2017年9月20日 上午11:05:23
     * @param userDao
     */
    public void setUserDao(UserDao userDao)
    {
        this.userDao = userDao;
    }

    /**
     * 方法描述：保存用户方法
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:02:43
     * @param user
     */
    public void save(User user)
    {
        userDao.save(user);
    }

    /**
     * 方法描述：根据id找到用户信息
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:03:14
     * @param id
     * @return
     */
    public User findById(Integer id)
    {
        User user = userDao.findUserById(id);
        return user;
    }

    /**
     * 方法描述：用户列表
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午11:04:21
     * @return
     */
    public List<User> query()
    {
        return userDao.query();
    }

    /**
     * 方法描述：通过username查找用户信息
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午5:51:32
     * @param username
     * @return
     */
    public User findByUsername(String username)
    {
        return userDao.findByUsername(username);
    }

    public void updateLoginTime(Integer id)
    {
        userDao.updateLoginTime(id);
    }
}
