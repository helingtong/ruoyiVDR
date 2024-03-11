package com.ruoyi.allow.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.allow.mapper.AllowMapper;
import com.ruoyi.allow.domain.Allow;
import com.ruoyi.allow.service.IAllowService;
import com.ruoyi.common.core.text.Convert;

/**
 * 允许值Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-03-11
 */
@Service
public class AllowServiceImpl implements IAllowService 
{
    @Autowired
    private AllowMapper allowMapper;

    /**
     * 查询允许值
     * 
     * @param allowId 允许值主键
     * @return 允许值
     */
    @Override
    public Allow selectAllowByAllowId(String allowId)
    {
        return allowMapper.selectAllowByAllowId(allowId);
    }

    /**
     * 查询允许值列表
     * 
     * @param allow 允许值
     * @return 允许值
     */
    @Override
    public List<Allow> selectAllowList(Allow allow)
    {
        return allowMapper.selectAllowList(allow);
    }

    /**
     * 新增允许值
     * 
     * @param allow 允许值
     * @return 结果
     */
    @Override
    public int insertAllow(Allow allow)
    {
        return allowMapper.insertAllow(allow);
    }

    /**
     * 修改允许值
     * 
     * @param allow 允许值
     * @return 结果
     */
    @Override
    public int updateAllow(Allow allow)
    {
        return allowMapper.updateAllow(allow);
    }

    /**
     * 批量删除允许值
     * 
     * @param allowIds 需要删除的允许值主键
     * @return 结果
     */
    @Override
    public int deleteAllowByAllowIds(String allowIds)
    {
        return allowMapper.deleteAllowByAllowIds(Convert.toStrArray(allowIds));
    }

    /**
     * 删除允许值信息
     * 
     * @param allowId 允许值主键
     * @return 结果
     */
    @Override
    public int deleteAllowByAllowId(String allowId)
    {
        return allowMapper.deleteAllowByAllowId(allowId);
    }
}
