package com.ruoyi.standard.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.standard.mapper.StandardMapper;
import com.ruoyi.standard.domain.Standard;
import com.ruoyi.standard.service.IStandardService;
import com.ruoyi.common.core.text.Convert;

/**
 * 标准信息管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-03-10
 */
@Service
public class StandardServiceImpl implements IStandardService 
{
    @Autowired
    private StandardMapper standardMapper;

    /**
     * 查询标准信息管理
     * 
     * @param standardId 标准信息管理主键
     * @return 标准信息管理
     */
    @Override
    public Standard selectStandardByStandardId(String standardId)
    {
        return standardMapper.selectStandardByStandardId(standardId);
    }

    /**
     * 查询标准信息管理列表
     * 
     * @param standard 标准信息管理
     * @return 标准信息管理
     */
    @Override
    public List<Standard> selectStandardList(Standard standard)
    {
        return standardMapper.selectStandardList(standard);
    }

    /**
     * 新增标准信息管理
     * 
     * @param standard 标准信息管理
     * @return 结果
     */
    @Override
    public int insertStandard(Standard standard)
    {
        return standardMapper.insertStandard(standard);
    }

    /**
     * 修改标准信息管理
     * 
     * @param standard 标准信息管理
     * @return 结果
     */
    @Override
    public int updateStandard(Standard standard)
    {
        return standardMapper.updateStandard(standard);
    }

    /**
     * 批量删除标准信息管理
     * 
     * @param standardIds 需要删除的标准信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStandardByStandardIds(String standardIds)
    {
        return standardMapper.deleteStandardByStandardIds(Convert.toStrArray(standardIds));
    }

    /**
     * 删除标准信息管理信息
     * 
     * @param standardId 标准信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStandardByStandardId(String standardId)
    {
        return standardMapper.deleteStandardByStandardId(standardId);
    }
}
