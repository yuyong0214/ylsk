
package com.ylsk.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ylsk.controller.BaseAction;

/**
 * @项目名称：ylsk
 * @类名称：Index
 * @类描述：
 * @创建人：YUY
 * @创建时间：2017年9月21日 下午2:38:42
 * @修改人：YUY
 * @修改时间：2017年9月21日 下午2:38:42
 * @修改备注：
 * @version
 */
@Controller
@RequestMapping("/admin/index")
public class IndexAction extends BaseAction
{
    @RequestMapping("/main")
    public String main()
    {
        return "admin/index_main";
    }

    @RequestMapping("/header")
    public String header(Model model)
    {
        model.addAttribute("username", this.getLoginUser().getUsername());
        return "admin/index_header";
    }

    @RequestMapping("/menu")
    public String menu()
    {
        if (empty(this.getLoginUser().getAcademy_id()))
            return "admin/index_managerMenu";
        else
            return "admin/index_menu";
    }

    @RequestMapping("/index")
    public String index()
    {
        return "admin/index_index";
    }

}
