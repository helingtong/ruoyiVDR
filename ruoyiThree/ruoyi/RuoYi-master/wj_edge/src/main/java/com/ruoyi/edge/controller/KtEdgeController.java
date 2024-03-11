package com.ruoyi.edge.controller;

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
import com.ruoyi.edge.domain.KtEdge;
import com.ruoyi.edge.service.IKtEdgeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 关系注册Controller
 * 
 * @author w
 * @date 2023-03-09
 */
@Controller
@RequestMapping("/egde/search")
public class KtEdgeController extends BaseController
{
    private String prefix = "egde/search";

    @Autowired
    private IKtEdgeService ktedgeService;

    @RequiresPermissions("egde:search:view")
    @GetMapping()
    public String search()
    {
        return prefix + "/search";
    }

    /**
     * 查询关系注册列表
     */
    @RequiresPermissions("egde:search:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(KtEdge ktegde)
    {
        startPage();
        List<KtEdge> list = ktedgeService.selectKtEdgeList(ktegde);
        return getDataTable(list);
    }

    /**
     * 导出关系注册列表
     */
    @RequiresPermissions("egde:search:export")
    @Log(title = "关系注册", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KtEdge ktegde)
    {
        List<KtEdge> list = ktedgeService.selectKtEdgeList(ktegde);
        ExcelUtil<KtEdge> util = new ExcelUtil<KtEdge>(KtEdge.class);
        return util.exportExcel(list, "关系注册数据");
    }

    /**
     * 新增关系注册
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存关系注册
     */
    @RequiresPermissions("egde:search:add")
    @Log(title = "关系注册", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(KtEdge ktegde)
    {
        return toAjax(ktedgeService.insertKtEdge(ktegde));
    }

    /**
     * 修改关系注册
     */
    @RequiresPermissions("egde:search:edit")
    @GetMapping("/edit/{linkId}")
    public String edit(@PathVariable("linkId") Long linkId, ModelMap mmap)
    {
        KtEdge ktegde = ktedgeService.selectKtEdgeByLinkId(linkId);
        mmap.put("ktegde", ktegde);
        return prefix + "/edit";
    }

    /**
     * 修改保存关系注册
     */
    @RequiresPermissions("egde:search:edit")
    @Log(title = "关系注册", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(KtEdge ktedge)
    {
        return toAjax(ktedgeService.updateKtEdge(ktedge));
    }

    /**
     * 删除关系注册
     */
    @RequiresPermissions("egde:search:remove")
    @Log(title = "关系注册", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ktedgeService.deleteKtEdgeByLinkIds(ids));
    }
}
