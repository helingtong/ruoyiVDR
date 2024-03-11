package com.ruoyi.allow.service;

import java.util.List;
import com.ruoyi.allow.domain.Allow;

/**
 * 允许值Service接口
 * 
 * @author ruoyi
 * @date 2024-03-11
 */
public interface IAllowService 
{
    /**
     * 查询允许值
     * 
     * @param allowId 允许值主键
     * @return 允许值
     */
    public Allow selectAllowByAllowId(String allowId);

    /**
     * 查询允许值列表
     * 
     * @param allow 允许值
     * @return 允许值集合
     */
    public List<Allow> selectAllowList(Allow allow);

    /**
     * 新增允许值
     * 
     * @param allow 允许值
     * @return 结果
     */
    public int insertAllow(Allow allow);

    /**
     * 修改允许值
     * 
     * @param allow 允许值
     * @return 结果
     */
    public int updateAllow(Allow allow);

    /**
     * 批量删除允许值
     * 
     * @param allowIds 需要删除的允许值主键集合
     * @return 结果
     */
    public int deleteAllowByAllowIds(String allowIds);

    /**
     * 删除允许值信息
     * 
     * @param allowId 允许值主键
     * @return 结果
     */
    public int deleteAllowByAllowId(String allowId);
}
