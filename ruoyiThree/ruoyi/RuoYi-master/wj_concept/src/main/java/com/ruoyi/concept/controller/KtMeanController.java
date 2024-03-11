package com.ruoyi.concept.controller;

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
import com.ruoyi.concept.domain.KtMean;
import com.ruoyi.concept.service.IKtMeanService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 概念域注册Controller
 * 
 * @author w
 * @date 2023-03-07
 */
@Controller
@RequestMapping("/concept/register")
public class KtMeanController extends BaseController
{
    private String prefix = "concept/register";

    @Autowired
    private IKtMeanService ktMeanService;

    @RequiresPermissions("concept:register:view")
    @GetMapping()
    public String register()
    {
        return prefix + "/register";
    }

    /**
     * 查询概念域注册列表
     */
    @RequiresPermissions("concept:register:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtMean ktMean)
    {
        startPage();
        List<KtMean> list = ktMeanService.selectKtMeanList(ktMean);
        return getDataTable(list);
    }

    /**
     * 导出概念域注册列表
     */
    @RequiresPermissions("concept:register:export")
    @Log(title = "概念域注册", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtMean ktMean)
    {
        List<KtMean> list = ktMeanService.selectKtMeanList(ktMean);
        ExcelUtil<KtMean> util = new ExcelUtil<KtMean>(KtMean.class);
        return util.exportExcel(list, "概念域注册数据");
    }

    /**
     * 新增概念域注册
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存概念域注册
     */
    @RequiresPermissions("concept:register:add")
    @Log(title = "概念域注册", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtMean ktMean)
    {
        return toAjax(ktMeanService.insertKtMean(ktMean));
    }

    /**
     * 修改概念域注册
     */
    @RequiresPermissions("concept:register:edit")
    @GetMapping("/edit/{编号}")
    public String edit(@PathVariable("编号") Long 编号, ModelMap mmap)
    {
        KtMean ktMean = ktMeanService.selectKtMeanBy编号(编号);
        mmap.put("ktMean", ktMean);
        return prefix + "/edit";
    }

    /**
     * 修改保存概念域注册
     */
    @RequiresPermissions("concept:register:edit")
    @Log(title = "概念域注册", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtMean ktMean)
    {
        return toAjax(ktMeanService.updateKtMean(ktMean));
    }

    /**
     * 删除概念域注册
     */
    @RequiresPermissions("concept:register:remove")
    @Log(title = "概念域注册", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktMeanService.deleteKtMeanBy编号s(ids));
    }
}
