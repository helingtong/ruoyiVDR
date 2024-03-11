package com.ruoyi.shiyou.controller;

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
import com.ruoyi.shiyou.domain.KtShiyou;
import com.ruoyi.shiyou.service.IKtShiyouService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 石油领域词汇表Controller
 * 
 * @author w
 * @date 2023-03-03
 */
@Controller
@RequestMapping("/shiyou/vocabulary")
public class KtShiyouController extends BaseController
{
    private String prefix = "shiyou/vocabulary";

    @Autowired
    private IKtShiyouService ktShiyouService;

    @RequiresPermissions("shiyou:vocabulary:view")
    @GetMapping()
    public String vocabulary()
    {
        return prefix + "/vocabulary";
    }

    /**
     * 查询石油领域词汇表列表
     */
    @RequiresPermissions("shiyou:vocabulary:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtShiyou ktShiyou)
    {
        startPage();
        List<KtShiyou> list = ktShiyouService.selectKtShiyouList(ktShiyou);
        return getDataTable(list);
    }

    /**
     * 导出石油领域词汇表列表
     */
    @RequiresPermissions("shiyou:vocabulary:export")
    @Log(title = "石油领域词汇表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtShiyou ktShiyou)
    {
        List<KtShiyou> list = ktShiyouService.selectKtShiyouList(ktShiyou);
        ExcelUtil<KtShiyou> util = new ExcelUtil<KtShiyou>(KtShiyou.class);
        return util.exportExcel(list, "石油领域词汇表数据");
    }

    /**
     * 新增石油领域词汇表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存石油领域词汇表
     */
    @RequiresPermissions("shiyou:vocabulary:add")
    @Log(title = "石油领域词汇表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtShiyou ktShiyou)
    {
        return toAjax(ktShiyouService.insertKtShiyou(ktShiyou));
    }

    /**
     * 修改石油领域词汇表
     */
    @RequiresPermissions("shiyou:vocabulary:edit")
    @GetMapping("/edit/{syId}")
    public String edit(@PathVariable("syId") Long syId, ModelMap mmap)
    {
        KtShiyou ktShiyou = ktShiyouService.selectKtShiyouBySyId(syId);
        mmap.put("ktShiyou", ktShiyou);
        return prefix + "/edit";
    }

    /**
     * 修改保存石油领域词汇表
     */
    @RequiresPermissions("shiyou:vocabulary:edit")
    @Log(title = "石油领域词汇表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtShiyou ktShiyou)
    {
        return toAjax(ktShiyouService.updateKtShiyou(ktShiyou));
    }

    /**
     * 删除石油领域词汇表
     */
    @RequiresPermissions("shiyou:vocabulary:remove")
    @Log(title = "石油领域词汇表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktShiyouService.deleteKtShiyouBySyIds(ids));
    }
}
