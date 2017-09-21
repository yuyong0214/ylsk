
package com.ylsk.po;

import java.util.Date;

import org.springframework.stereotype.Component;

/**
 * @项目名称：ssm01
 * @类名称：User
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月11日 下午4:20:00
 * @修改人：YUY
 * @修改时间：2017年9月11日 下午4:20:00
 * @修改备注：
 * @version
 */
@Component
public class User
{
    /** 学员角色 **/
    public static final int USER_TYPE_STUDENT = 0;

    /** 管理员角色 **/
    public static final int USER_TYPE_ADMIN = 1;

    /** 教职工角色 **/
    public static final int USER_TYPE_STAFF = 2;

    public static final int USER_SEX_WOMAN = 0;

    public static final int USER_SEX_MAN = 1;

    private Integer id;

    private String uuid;

    private String username;

    private String password;

    private String realname;

    private Integer user_type;

    private Integer sex;

    private String folk;

    private String introduction;

    private String avatar;

    private String email;

    private String mobile;

    private String office;

    private String office_phone;

    private Date login_time;

    private Date create_time;

    private String remark;

    /** 当用户为管理员的时候可以指定用户为哪个院校的管理员 **/
    private Integer academy_id;

    // 用户接收消息的设备标识(用户每次登陆时重新发送,系统重复记录)
    private String token;

    // 通知提醒
    private Integer push_prompt;

    // 用户状态 (0：停用；1：正常)
    private Integer status;

    // 用户登录标示
    private String login_id;

    // -------其他---------
    private String password_ag;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getUuid()
    {
        return uuid;
    }

    public void setUuid(String uuid)
    {
        this.uuid = uuid;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getRealname()
    {
        return realname;
    }

    public void setRealname(String realname)
    {
        this.realname = realname;
    }

    public Integer getUser_type()
    {
        return user_type;
    }

    public void setUser_type(Integer user_type)
    {
        this.user_type = user_type;
    }

    public Integer getSex()
    {
        return sex;
    }

    public void setSex(Integer sex)
    {
        this.sex = sex;
    }

    public String getFolk()
    {
        return folk;
    }

    public void setFolk(String folk)
    {
        this.folk = folk;
    }

    public String getIntroduction()
    {
        return introduction;
    }

    public void setIntroduction(String introduction)
    {
        this.introduction = introduction;
    }

    public String getAvatar()
    {
        return avatar;
    }

    public void setAvatar(String avatar)
    {
        this.avatar = avatar;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getMobile()
    {
        return mobile;
    }

    public void setMobile(String mobile)
    {
        this.mobile = mobile;
    }

    public String getOffice()
    {
        return office;
    }

    public void setOffice(String office)
    {
        this.office = office;
    }

    public String getOffice_phone()
    {
        return office_phone;
    }

    public void setOffice_phone(String office_phone)
    {
        this.office_phone = office_phone;
    }

    public Date getLogin_time()
    {
        return login_time;
    }

    public void setLogin_time(Date login_time)
    {
        this.login_time = login_time;
    }

    public Date getCreate_time()
    {
        return create_time;
    }

    public void setCreate_time(Date create_time)
    {
        this.create_time = create_time;
    }

    public String getRemark()
    {
        return remark;
    }

    public void setRemark(String remark)
    {
        this.remark = remark;
    }

    public Integer getAcademy_id()
    {
        return academy_id;
    }

    public void setAcademy_id(Integer academy_id)
    {
        this.academy_id = academy_id;
    }

    public String getToken()
    {
        return token;
    }

    public void setToken(String token)
    {
        this.token = token;
    }

    public Integer getPush_prompt()
    {
        return push_prompt;
    }

    public void setPush_prompt(Integer push_prompt)
    {
        this.push_prompt = push_prompt;
    }

    public Integer getStatus()
    {
        return status;
    }

    public void setStatus(Integer status)
    {
        this.status = status;
    }

    public String getLogin_id()
    {
        return login_id;
    }

    public void setLogin_id(String login_id)
    {
        this.login_id = login_id;
    }

    public String getPassword_ag()
    {
        return password_ag;
    }

    public void setPassword_ag(String password_ag)
    {
        this.password_ag = password_ag;
    }

    @Override
    public String toString()
    {
        return "User [id=" + id + ", uuid=" + uuid + ", username=" + username
                + ", password=" + password + ", realname=" + realname
                + ", user_type=" + user_type + ", sex=" + sex + ", folk="
                + folk + ", introduction=" + introduction + ", avatar="
                + avatar + ", email=" + email + ", mobile=" + mobile
                + ", office=" + office + ", office_phone=" + office_phone
                + ", login_time=" + login_time + ", create_time=" + create_time
                + ", remark=" + remark + ", academy_id=" + academy_id
                + ", token=" + token + ", push_prompt=" + push_prompt
                + ", status=" + status + ", login_id=" + login_id
                + ", password_ag=" + password_ag + "]";
    }

}
