
package com.ylsk.mapper;

import java.util.List;

import com.ylsk.po.User;

/**
 * @项目名称：ssm01
 * @类名称：UserMapper
 * @类描述：用户信息操作数据库接口
 * @创建人：YUY
 * @创建时间：2017年9月11日 下午4:23:47
 * @修改人：YUY
 * @修改时间：2017年9月11日 下午4:23:47
 * @修改备注：
 * @version
 */
public interface UserMapper
{
    /**
     * 方法描述：保存用户信息接口
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:08:48
     * @param user
     */
    public void saveUser(User user);

    /**
     * 方法描述：根据id查找用户信息接口
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:07:08
     * @param userId
     * @return
     */
    public User selectUserById(int userId);

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
