
package com.ylsk.mapper;

import com.ylsk.po.UserLoginTrack;

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
public interface UserLoginTrackMapper
{
    /**
     * 方法描述：保存用户信息接口
     * 
     * @author YUY
     * @创建时间：2017年9月12日 上午10:08:48
     * @param user
     */
    public void save(UserLoginTrack userLoginTrack);

}
