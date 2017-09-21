
package com.ylsk.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@SuppressWarnings("unchecked")
public class RequestUtil
{
    /**
     * 按照指定的Key处理并在Session中转存Request请求参数
     * 
     * @param request
     * @param key
     * @return 处理后的请求参数数据
     */
    public static Map processParameters(HttpServletRequest request, String key)
    {
        // 获取保存的请求参数
        HttpSession session = request.getSession();
        Map params = (Map) session.getAttribute(key);
        if (params == null)
        {
            params = new HashMap();
            session.setAttribute(key, params);
        }

        // 如果请求中包含初始化参数，先清空已保存的请求参数
        String init = request.getParameter("init");
        if (init != null)
            params.clear();

        // 装入本次请求参数
        Map rm = request.getParameterMap();
        Iterator iterator = rm.entrySet().iterator();
        while (iterator.hasNext())
        {
            Map.Entry entry = (Map.Entry) iterator.next();
            Object name = entry.getKey();
            String[] value = (String[]) entry.getValue();
            if (value != null)
            {
                if (value.length == 0)
                    params.put(name, "");
                else if (value.length == 1)
                    params.put(name, value[0]);
                else
                    params.put(name, value);
            }
        }
        return params;
    }
}
