package com.ruoyi.wj.mapper;

import java.util.List;
import com.ruoyi.wj.domain.KtMingming;

/**
 * 命名空间管理Mapper接口
 * 
 * @author w
 * @date 2023-03-02
 */
public interface KtMingmingMapper 
{
    /**
     * 查询命名空间管理
     * 
     * @param mmId 命名空间管理主键
     * @return 命名空间管理
     */
    public KtMingming selectKtMingmingByMmId(Long mmId);

    /**
     * 查询命名空间管理列表
     * 
     * @param ktMingming 命名空间管理
     * @return 命名空间管理集合
     */
    public List<KtMingming> selectKtMingmingList(KtMingming ktMingming);

    /**
     * 新增命名空间管理
     * 
     * @param ktMingming 命名空间管理
     * @return 结果
     */
    public int insertKtMingming(KtMingming ktMingming);

    /**
     * 修改命名空间管理
     * 
     * @param ktMingming 命名空间管理
     * @return 结果
     */
    public int updateKtMingming(KtMingming ktMingming);

    /**
     * 删除命名空间管理
     * 
     * @param mmId 命名空间管理主键
     * @return 结果
     */
    public int deleteKtMingmingByMmId(Long mmId);

    /**
     * 批量删除命名空间管理
     * 
     * @param mmIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKtMingmingByMmIds(String[] mmIds);
}
