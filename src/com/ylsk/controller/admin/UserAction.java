
package com.ylsk.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ylsk.controller.BaseAction;
import com.ylsk.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class UserAction extends BaseAction
{
    @Resource
    private UserService userService;

    @RequestMapping("/list")
    public String list()
    {
        request.setAttribute("userList", userService.query());
        return "admin/user_list";
    }

    /**
     * 进入新增用户界面
     */
    public String add()
    {
        // List academyList = academy_service.findAll();
        // request.setAttribute("academy_id",
        // this.getLoginUser().getAcademy_id());
        // request.setAttribute("academyList", academyList);
        return "add";
    }
}
