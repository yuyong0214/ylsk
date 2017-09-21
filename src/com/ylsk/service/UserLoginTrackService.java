
package com.ylsk.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ylsk.dao.UserLoginTrackDao;
import com.ylsk.po.UserLoginTrack;

/**
 * @项目名称：ylsk
 * @类名称：UserLoginTrackService
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月21日 下午2:01:22
 * @修改人：YUY
 * @修改时间：2017年9月21日 下午2:01:22
 * @修改备注：
 * @version
 */
@Service
public class UserLoginTrackService
{
    @Autowired
    private UserLoginTrackDao userLoginTrackDao;

    public void saveByUserId(Integer user_id)
    {
        UserLoginTrack userLoginTrack = new UserLoginTrack();
        userLoginTrack.setUser_id(user_id);
        userLoginTrack.setLogin_time(new Date());
        userLoginTrackDao.save(userLoginTrack);
    }
}
