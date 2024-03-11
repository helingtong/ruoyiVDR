package com.ruoyi.standard.controller;

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
import com.ruoyi.standard.domain.Standard;
import com.ruoyi.standard.service.IStandardService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 标准信息管理Controller
 *
 * @author ruoyi
 * @date 2024-03-11
 */
@Controller
@RequestMapping("/standard/standard")
public class StandardController extends BaseController
{
    private String prefix = "standard/standard";

    @Autowired
    private IStandardService standardService;

    @RequiresPermissions("standard:standard:view")
    @GetMapping()
    public String standard()
    {
        return prefix + "/standard";
    }

    /**
     * 查询标准信息管理列表
     */
    @RequiresPermissions("standard:standard:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Standard standard)
    {
        startPage();
        List<Standard> list = standardService.selectStandardList(standard);
        return getDataTable(list);
    }

    /**
     * 导出标准信息管理列表
     */
    @RequiresPermissions("standard:standard:export")
    @Log(title = "标准信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Standard standard)
    {
        List<Standard> list = standardService.selectStandardList(standard);
        ExcelUtil<Standard> util = new ExcelUtil<Standard>(Standard.class);
        return util.exportExcel(list, "标准信息管理数据");
    }

    /**
     * 新增标准信息管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存标准信息管理
     */
    @RequiresPermissions("standard:standard:add")
    @Log(title = "标准信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Standard standard)
    {
        return toAjax(standardService.insertStandard(standard));
    }

    /**
     * 修改标准信息管理
     */
    @RequiresPermissions("standard:standard:edit")
    @GetMapping("/edit/{standardId}")
    public String edit(@PathVariable("standardId") String standardId, ModelMap mmap)
    {
        Standard standard = standardService.selectStandardByStandardId(standardId);
        mmap.put("standard", standard);
        return prefix + "/edit";
    }

    /**
     * 修改保存标准信息管理
     */
    @RequiresPermissions("standard:standard:edit")
    @Log(title = "标准信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Standard standard)
    {
        return toAjax(standardService.updateStandard(standard));
    }

    /**
     * 删除标准信息管理
     */
    @RequiresPermissions("standard:standard:remove")
    @Log(title = "标准信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(standardService.deleteStandardByStandardIds(ids));
    }
}
