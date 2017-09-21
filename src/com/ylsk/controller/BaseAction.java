
package com.ylsk.controller;

import java.util.Collection;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;

import com.ylsk.common.Constants;
import com.ylsk.po.User;

/**
 * @项目名称：ylsk
 * @类名称：BeasAction
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月19日 下午4:24:20
 * @修改人：YUY
 * @修改时间：2017年9月19日 下午4:24:20
 * @修改备注：
 * @version
 */
public class BaseAction
{
    protected HttpServletRequest request;

    protected HttpServletResponse response;

    protected HttpSession session;

    protected ServletContext application;

    /**
     * 返回信息
     */
    protected String message;

    /**
     * 操作提示后的跳转URL,为空则返回前一页
     */
    protected String redirectionUrl;

    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request,
            HttpServletResponse response)
    {
        this.request = request;
        this.response = response;
        this.session = request.getSession();
        this.application = request.getServletContext();
    }

    /**
     * 设置 Response 对象，不允许浏览器缓存
     */
    protected void noCache()
    {
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.addHeader("Cache-Control", "no-cache");
        response.addHeader("Cache-Control", "no-store");
        response.addHeader("Cache-Control", "must-revalidate");
    }

    /**
     * 方法描述：判断值是否正常
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午5:24:22
     * @param o
     * @return
     */
    protected boolean empty(Object o)
    {
        if (o == null)
            return true;
        else if (o instanceof String)
            return ((String) o).length() == 0;
        else if (o instanceof Collection)
            return ((Collection) o).size() == 0;
        else if (o instanceof Map)
            return ((Map) o).size() == 0;
        else if (o instanceof Object[])
            return ((Object[]) o).length == 0;
        else
            return false;
    }

    /**
     * 获得当前登录用户
     * 
     * @author YUY
     */
    protected User getLoginUser()
    {
        return (User) session.getAttribute(Constants.SESSION_USER_KEY);
    }
}
