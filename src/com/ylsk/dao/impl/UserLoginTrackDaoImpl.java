
package com.ylsk.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ylsk.dao.UserLoginTrackDao;
import com.ylsk.mapper.UserLoginTrackMapper;
import com.ylsk.po.UserLoginTrack;

/**
 * @项目名称：ylsk
 * @类名称：UserLoginTrackDaoImpl
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月20日 下午1:56:41
 * @修改人：YUY
 * @修改时间：2017年9月20日 下午1:56:41
 * @修改备注：
 * @version
 */
@Repository
public class UserLoginTrackDaoImpl implements UserLoginTrackDao
{
    @Autowired
    private UserLoginTrackMapper userLoginTrackMapper;

    @Override
    public void save(UserLoginTrack userLoginTrack)
    {
        userLoginTrackMapper.save(userLoginTrack);
    }

}
