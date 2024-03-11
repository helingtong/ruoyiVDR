package com.ruoyi.cibiao.controller;

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
import com.ruoyi.cibiao.domain.KtCibiao;
import com.ruoyi.cibiao.service.IKtCibiaoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 词表基本信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-03
 */
@Controller
@RequestMapping("/cibiao/manager")
public class KtCibiaoController extends BaseController
{
    private String prefix = "cibiao/manager";

    @Autowired
    private IKtCibiaoService ktCibiaoService;

    @RequiresPermissions("cibiao:manager:view")
    @GetMapping()
    public String manager()
    {
        return prefix + "/manager";
    }

    /**
     * 查询词表基本信息列表
     */
    @RequiresPermissions("cibiao:manager:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtCibiao ktCibiao)
    {
        startPage();
        List<KtCibiao> list = ktCibiaoService.selectKtCibiaoList(ktCibiao);
        return getDataTable(list);
    }

    /**
     * 导出词表基本信息列表
     */
    @RequiresPermissions("cibiao:manager:export")
    @Log(title = "词表基本信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtCibiao ktCibiao)
    {
        List<KtCibiao> list = ktCibiaoService.selectKtCibiaoList(ktCibiao);
        ExcelUtil<KtCibiao> util = new ExcelUtil<KtCibiao>(KtCibiao.class);
        return util.exportExcel(list, "词表基本信息数据");
    }

    /**
     * 新增词表基本信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存词表基本信息
     */
    @RequiresPermissions("cibiao:manager:add")
    @Log(title = "词表基本信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtCibiao ktCibiao)
    {
        return toAjax(ktCibiaoService.insertKtCibiao(ktCibiao));
    }

    /**
     * 修改词表基本信息
     */
    @RequiresPermissions("cibiao:manager:edit")
    @GetMapping("/edit/{cbId}")
    public String edit(@PathVariable("cbId") Long cbId, ModelMap mmap)
    {
        KtCibiao ktCibiao = ktCibiaoService.selectKtCibiaoByCbId(cbId);
        mmap.put("ktCibiao", ktCibiao);
        return prefix + "/edit";
    }

    /**
     * 修改保存词表基本信息
     */
    @RequiresPermissions("cibiao:manager:edit")
    @Log(title = "词表基本信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtCibiao ktCibiao)
    {
        return toAjax(ktCibiaoService.updateKtCibiao(ktCibiao));
    }

    /**
     * 删除词表基本信息
     */
    @RequiresPermissions("cibiao:manager:remove")
    @Log(title = "词表基本信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktCibiaoService.deleteKtCibiaoByCbIds(ids));
    }
}
