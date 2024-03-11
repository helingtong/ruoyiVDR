package com.ruoyi.standard.service;

import java.util.List;
import com.ruoyi.standard.domain.Standard;

/**
 * 标准信息管理Service接口
 * 
 * @author ruoyi
 * @date 2024-03-10
 */
public interface IStandardService 
{
    /**
     * 查询标准信息管理
     * 
     * @param standardId 标准信息管理主键
     * @return 标准信息管理
     */
    public Standard selectStandardByStandardId(String standardId);

    /**
     * 查询标准信息管理列表
     * 
     * @param standard 标准信息管理
     * @return 标准信息管理集合
     */
    public List<Standard> selectStandardList(Standard standard);

    /**
     * 新增标准信息管理
     * 
     * @param standard 标准信息管理
     * @return 结果
     */
    public int insertStandard(Standard standard);

    /**
     * 修改标准信息管理
     * 
     * @param standard 标准信息管理
     * @return 结果
     */
    public int updateStandard(Standard standard);

    /**
     * 批量删除标准信息管理
     * 
     * @param standardIds 需要删除的标准信息管理主键集合
     * @return 结果
     */
    public int deleteStandardByStandardIds(String standardIds);

    /**
     * 删除标准信息管理信息
     * 
     * @param standardId 标准信息管理主键
     * @return 结果
     */
    public int deleteStandardByStandardId(String standardId);
}
