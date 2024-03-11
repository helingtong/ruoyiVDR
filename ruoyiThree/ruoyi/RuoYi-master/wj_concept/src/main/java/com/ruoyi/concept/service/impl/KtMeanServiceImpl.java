package com.ruoyi.concept.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.concept.mapper.KtMeanMapper;
import com.ruoyi.concept.domain.KtMean;
import com.ruoyi.concept.service.IKtMeanService;
import com.ruoyi.common.core.text.Convert;

/**
 * 概念域注册Service业务层处理
 * 
 * @author w
 * @date 2023-03-07
 */
@Service
public class KtMeanServiceImpl implements IKtMeanService 
{
    @Autowired
    private KtMeanMapper ktMeanMapper;

    /**
     * 查询概念域注册
     * 
     * @param 编号 概念域注册主键
     * @return 概念域注册
     */
    @Override
    public KtMean selectKtMeanBy编号(Long 编号)
    {
        return ktMeanMapper.selectKtMeanBy编号(编号);
    }

    /**
     * 查询概念域注册列表
     * 
     * @param ktMean 概念域注册
     * @return 概念域注册
     */
    @Override
    public List<KtMean> selectKtMeanList(KtMean ktMean)
    {
        return ktMeanMapper.selectKtMeanList(ktMean);
    }

    /**
     * 新增概念域注册
     * 
     * @param ktMean 概念域注册
     * @return 结果
     */
    @Override
    public int insertKtMean(KtMean ktMean)
    {
        return ktMeanMapper.insertKtMean(ktMean);
    }

    /**
     * 修改概念域注册
     * 
     * @param ktMean 概念域注册
     * @return 结果
     */
    @Override
    public int updateKtMean(KtMean ktMean)
    {
        return ktMeanMapper.updateKtMean(ktMean);
    }

    /**
     * 批量删除概念域注册
     * 
     * @param 编号s 需要删除的概念域注册主键
     * @return 结果
     */
    @Override
    public int deleteKtMeanBy编号s(String 编号s)
    {
        return ktMeanMapper.deleteKtMeanBy编号s(Convert.toStrArray(编号s));
    }

    /**
     * 删除概念域注册信息
     * 
     * @param 编号 概念域注册主键
     * @return 结果
     */
    @Override
    public int deleteKtMeanBy编号(Long 编号)
    {
        return ktMeanMapper.deleteKtMeanBy编号(编号);
    }
}
