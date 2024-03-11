package com.ruoyi.wj.controller;

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
import com.ruoyi.wj.domain.KtMingming;
import com.ruoyi.wj.service.IKtMingmingService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 命名空间管理Controller
 * 
 * @author w
 * @date 2023-03-02
 */
@Controller
@RequestMapping("/wj_mingming/wj_mingming")
public class KtMingmingController extends BaseController
{
    private String prefix = "wj_mingming/wj_mingming";

    @Autowired
    private IKtMingmingService ktMingmingService;

    @RequiresPermissions("wj_mingming:wj_mingming:view")
    @GetMapping()
    public String wj_mingming()
    {
        return prefix + "/wj_mingming";
    }

    /**
     * 查询命名空间管理列表
     */
    @RequiresPermissions("wj_mingming:wj_mingming:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtMingming ktMingming)
    {
        startPage();
        List<KtMingming> list = ktMingmingService.selectKtMingmingList(ktMingming);
        return getDataTable(list);
    }

    /**
     * 导出命名空间管理列表
     */
    @RequiresPermissions("wj_mingming:wj_mingming:export")
    @Log(title = "命名空间管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtMingming ktMingming)
    {
        List<KtMingming> list = ktMingmingService.selectKtMingmingList(ktMingming);
        ExcelUtil<KtMingming> util = new ExcelUtil<KtMingming>(KtMingming.class);
        return util.exportExcel(list, "命名空间管理数据");
    }

    /**
     * 新增命名空间管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存命名空间管理
     */
    @RequiresPermissions("wj_mingming:wj_mingming:add")
    @Log(title = "命名空间管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtMingming ktMingming)
    {
        return toAjax(ktMingmingService.insertKtMingming(ktMingming));
    }

    /**
     * 修改命名空间管理
     */
    @RequiresPermissions("wj_mingming:wj_mingming:edit")
    @GetMapping("/edit/{mmId}")
    public String edit(@PathVariable("mmId") Long mmId, ModelMap mmap)
    {
        KtMingming ktMingming = ktMingmingService.selectKtMingmingByMmId(mmId);
        mmap.put("ktMingming", ktMingming);
        return prefix + "/edit";
    }

    /**
     * 修改保存命名空间管理
     */
    @RequiresPermissions("wj_mingming:wj_mingming:edit")
    @Log(title = "命名空间管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtMingming ktMingming)
    {
        return toAjax(ktMingmingService.updateKtMingming(ktMingming));
    }

    /**
     * 删除命名空间管理
     */
    @RequiresPermissions("wj_mingming:wj_mingming:remove")
    @Log(title = "命名空间管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktMingmingService.deleteKtMingmingByMmIds(ids));
    }
}
