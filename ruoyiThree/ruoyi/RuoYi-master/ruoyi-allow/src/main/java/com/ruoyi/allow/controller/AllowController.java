package com.ruoyi.allow.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.allow.domain.Allow;
import com.ruoyi.allow.service.IAllowService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 允许值Controller
 * 
 * @author ruoyi
 * @date 2024-03-11
 */
@Controller
@RequestMapping("/allow/premit")
public class AllowController extends BaseController
{
    private String prefix = "allow/premit";

    @Autowired
    private IAllowService allowService;

    @RequiresPermissions("allow:premit:view")
    @GetMapping()
    public String premit()
    {
        return prefix + "/premit";
    }

    /**
     * 查询允许值列表
     */
    @RequiresPermissions("allow:premit:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Allow allow)
    {
        startPage();
        List<Allow> list = allowService.selectAllowList(allow);
        return getDataTable(list);
    }

    /**
     * 导出允许值列表
     */
    @RequiresPermissions("allow:premit:export")
    @Log(title = "允许值", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Allow allow)
    {
        List<Allow> list = allowService.selectAllowList(allow);
        ExcelUtil<Allow> util = new ExcelUtil<Allow>(Allow.class);
        return util.exportExcel(list, "允许值数据");
    }

    /**
     * 新增允许值
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存允许值
     */
    @RequiresPermissions("allow:premit:add")
    @Log(title = "允许值", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Allow allow)
    {
        return toAjax(allowService.insertAllow(allow));
    }

    /**
     * 修改允许值
     */
    @RequiresPermissions("allow:premit:edit")
    @GetMapping("/edit/{allowId}")
    public String edit(@PathVariable("allowId") String allowId, ModelMap mmap)
    {
        Allow allow = allowService.selectAllowByAllowId(allowId);
        mmap.put("allow", allow);
        return prefix + "/edit";
    }

    /**
     * 修改保存允许值
     */
    @RequiresPermissions("allow:premit:edit")
    @Log(title = "允许值", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Allow allow)
    {
        return toAjax(allowService.updateAllow(allow));
    }

    /**
     * 删除允许值
     */
    @RequiresPermissions("allow:premit:remove")
    @Log(title = "允许值", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(allowService.deleteAllowByAllowIds(ids));
    }
}
