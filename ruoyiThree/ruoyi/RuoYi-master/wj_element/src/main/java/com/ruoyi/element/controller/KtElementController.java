package com.ruoyi.element.controller;

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
import com.ruoyi.element.domain.KtElement;
import com.ruoyi.element.service.IKtElementService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 数据元目录Controller
 * 
 * @author w
 * @date 2023-03-05
 */
@Controller
@RequestMapping("/element/dictory")
public class KtElementController extends BaseController
{
    private String prefix = "element/dictory";

    @Autowired
    private IKtElementService ktElementService;

    @RequiresPermissions("element:dictory:view")
    @GetMapping()
    public String dictory()
    {
        return prefix + "/dictory";
    }

    /**
     * 查询数据元目录列表
     */
    @RequiresPermissions("element:dictory:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtElement ktElement)
    {
        startPage();
        List<KtElement> list = ktElementService.selectKtElementList(ktElement);
        return getDataTable(list);
    }

    /**
     * 导出数据元目录列表
     */
    @RequiresPermissions("element:dictory:export")
    @Log(title = "数据元目录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtElement ktElement)
    {
        List<KtElement> list = ktElementService.selectKtElementList(ktElement);
        ExcelUtil<KtElement> util = new ExcelUtil<KtElement>(KtElement.class);
        return util.exportExcel(list, "数据元目录数据");
    }

    /**
     * 新增数据元目录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存数据元目录
     */
    @RequiresPermissions("element:dictory:add")
    @Log(title = "数据元目录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtElement ktElement)
    {
        return toAjax(ktElementService.insertKtElement(ktElement));
    }

    /**
     * 修改数据元目录
     */
    @RequiresPermissions("element:dictory:edit")
    @GetMapping("/edit/{编号}")
    public String edit(@PathVariable("编号") Long 编号, ModelMap mmap)
    {
        KtElement ktElement = ktElementService.selectKtElementBy编号(编号);
        mmap.put("ktElement", ktElement);
        return prefix + "/edit";
    }

    /**
     * 修改保存数据元目录
     */
    @RequiresPermissions("element:dictory:edit")
    @Log(title = "数据元目录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtElement ktElement)
    {
        return toAjax(ktElementService.updateKtElement(ktElement));
    }

    /**
     * 删除数据元目录
     */
    @RequiresPermissions("element:dictory:remove")
    @Log(title = "数据元目录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktElementService.deleteKtElementBy编号s(ids));
    }
}
