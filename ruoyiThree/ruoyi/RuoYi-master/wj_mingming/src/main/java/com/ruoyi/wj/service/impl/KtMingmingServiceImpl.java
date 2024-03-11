package com.ruoyi.wj.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wj.mapper.KtMingmingMapper;
import com.ruoyi.wj.domain.KtMingming;
import com.ruoyi.wj.service.IKtMingmingService;
import com.ruoyi.common.core.text.Convert;

/**
 * 命名空间管理Service业务层处理
 * 
 * @author w
 * @date 2023-03-02
 */
@Service
public class KtMingmingServiceImpl implements IKtMingmingService 
{
    @Autowired
    private KtMingmingMapper ktMingmingMapper;

    /**
     * 查询命名空间管理
     * 
     * @param mmId 命名空间管理主键
     * @return 命名空间管理
     */
    @Override
    public KtMingming selectKtMingmingByMmId(Long mmId)
    {
        return ktMingmingMapper.selectKtMingmingByMmId(mmId);
    }

    /**
     * 查询命名空间管理列表
     * 
     * @param ktMingming 命名空间管理
     * @return 命名空间管理
     */
    @Override
    public List<KtMingming> selectKtMingmingList(KtMingming ktMingming)
    {
        return ktMingmingMapper.selectKtMingmingList(ktMingming);
    }

    /**
     * 新增命名空间管理
     * 
     * @param ktMingming 命名空间管理
     * @return 结果
     */
    @Override
    public int insertKtMingming(KtMingming ktMingming)
    {
        return ktMingmingMapper.insertKtMingming(ktMingming);
    }

    /**
     * 修改命名空间管理
     * 
     * @param ktMingming 命名空间管理
     * @return 结果
     */
    @Override
    public int updateKtMingming(KtMingming ktMingming)
    {
        return ktMingmingMapper.updateKtMingming(ktMingming);
    }

    /**
     * 批量删除命名空间管理
     * 
     * @param mmIds 需要删除的命名空间管理主键
     * @return 结果
     */
    @Override
    public int deleteKtMingmingByMmIds(String mmIds)
    {
        return ktMingmingMapper.deleteKtMingmingByMmIds(Convert.toStrArray(mmIds));
    }

    /**
     * 删除命名空间管理信息
     * 
     * @param mmId 命名空间管理主键
     * @return 结果
     */
    @Override
    public int deleteKtMingmingByMmId(Long mmId)
    {
        return ktMingmingMapper.deleteKtMingmingByMmId(mmId);
    }
}
