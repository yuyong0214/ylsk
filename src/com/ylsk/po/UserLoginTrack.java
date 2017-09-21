
package com.ylsk.po;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class UserLoginTrack
{
    private Integer id;

    private Integer user_id;

    private Date login_time;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public Integer getUser_id()
    {
        return user_id;
    }

    public void setUser_id(Integer user_id)
    {
        this.user_id = user_id;
    }

    public Date getLogin_time()
    {
        return login_time;
    }

    public void setLogin_time(Date login_time)
    {
        this.login_time = login_time;
    }

}
