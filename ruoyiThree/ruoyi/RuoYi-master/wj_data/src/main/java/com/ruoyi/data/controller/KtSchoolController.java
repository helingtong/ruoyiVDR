package com.ruoyi.data.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ruoyi.common.core.controller.BaseController;

/**
 * 数据元概念注册Controller
 * 
 * @author ruoyi
 * @date 2023-03-05
 */
@Controller
@RequestMapping("/data/register")
public class KtSchoolController extends BaseController
{
    private String prefix = "data/register";

    @RequiresPermissions("data:register:view")
    @GetMapping()
    public String register()
    {
        return prefix + "/register";
    }

}
