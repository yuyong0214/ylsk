
package com.ylsk.dao;

import java.util.List;

import com.ylsk.po.User;

public interface UserDao
{
    /**
     * 方法描述：保存方法
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:06:08
     * @param user
     */
    public void save(User user);

    /**
     * 方法描述：根据id查找用户信息
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:05:44
     * @param id
     * @return
     */
    public User findUserById(int id);

    /**
     * 方法描述：用户列表
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午11:06:07
     * @return
     */
    public List<User> query();

    /**
     * 方法描述：通过username查找用户信息
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午5:51:32
     * @param username
     * @return
     */
    public User findByUsername(String username);

    /**
     * 方法描述：更新最后登录时间
     * 
     * @author YUY
     * @创建时间：2017年9月20日 下午1:37:01
     * @param id
     */
    public void updateLoginTime(Integer id);
}
