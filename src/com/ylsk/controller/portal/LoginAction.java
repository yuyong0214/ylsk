
package com.ylsk.controller.portal;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ylsk.common.Constants;
import com.ylsk.controller.BaseAction;
import com.ylsk.po.User;
import com.ylsk.service.UserLoginTrackService;
import com.ylsk.service.UserService;
import com.ylsk.utils.Utility;

@Controller
@RequestMapping("/portal/login")
public class LoginAction extends BaseAction
{
    @Resource
    private UserService userService;

    @Resource
    private UserLoginTrackService UserLoginTrackService;

    /**
     * 方法描述：登录页面
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午4:06:03
     * @return
     */
    @RequestMapping
    public String execute()
    {
        return "portal/login_input";
    }

    /**
     * 方法描述：获取验证码
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午4:28:26
     * @return
     * @throws IOException
     */
    @RequestMapping("/verify_code")
    public String verifyCode() throws IOException
    {
        // 随机四位数字
        String code = Double.toString(Math.random()).substring(2, 6);
        session.setAttribute(Constants.VERIFY_CODE, code);

        int width = 80, height = 35;
        BufferedImage image = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        g.setColor(Color.white);
        g.fillRect(0, 0, width, height);
        g.setColor(Color.black);
        g.setFont(new Font("Verdana", Font.ITALIC, 20));
        g.drawString(code, 13, 24);
        g.setColor(new Color(0xFFFFFF));

        g.dispose();

        noCache();
        response.setContentType("image/jpeg");
        ImageIO.write(image, "JPEG", response.getOutputStream());
        return null;
    }

    /**
     * 方法描述：登录方法
     * 
     * @author YUY
     * @创建时间：2017年9月19日 下午5:41:49
     * @return
     * @throws IOException
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model)
            throws IOException
    {
        String verifyCode = request.getParameter("verifyCode");
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        if (empty(verifyCode))
        {
            message = "请输入验证码";
            return "result";
        }

        String verifyCodeInSession = (String) session.getAttribute(Constants.VERIFY_CODE);
        if (!verifyCode.equals(verifyCodeInSession))
        {
            message = "验证码输入错误";
            return "result";
        }

        User user = userService.findByUsername(username);
        if (user != null)
        {
            if (!empty(password)
                    && Utility.MD5(password + user.getUuid()).equals(
                            user.getPassword()))
            {
                session.setAttribute(Constants.SESSION_USER_KEY, user);

                // 记录所有用户的最后登录时间
                userService.updateLoginTime(user.getId());
                switch (user.getUser_type())
                {
                    case User.USER_TYPE_STUDENT:
                        // 调用注入接口中的方法
                        UserLoginTrackService.saveByUserId(user.getId());
                        redirectionUrl = "/student/index/main.action";
                        break;
                    case User.USER_TYPE_ADMIN:
                    case User.USER_TYPE_STAFF:
                        // 调用注入接口中的方法
                        UserLoginTrackService.saveByUserId(user.getId());
                        redirectionUrl = "/admin/index/main.action";
                        break;
                }

                if (!empty(redirectionUrl))
                {
                    response.sendRedirect(request.getContextPath()
                            + redirectionUrl);
                    return null;
                }
                else
                    return "result";
            }
            else
            {
                message = "用户名或密码错误";
                return "result";
            }
        }
        else
        {
            message = "用户名或密码错误";
            return "result";
        }
    }

    public String logout()
    {
        try
        {
            session.invalidate();
        }
        catch (Exception e)
        {
        }
        return "login";
    }
}
