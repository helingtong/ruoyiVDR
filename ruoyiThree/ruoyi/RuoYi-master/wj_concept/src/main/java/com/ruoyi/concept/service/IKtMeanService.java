package com.ruoyi.concept.service;

import java.util.List;
import com.ruoyi.concept.domain.KtMean;

/**
 * 概念域注册Service接口
 * 
 * @author w
 * @date 2023-03-07
 */
public interface IKtMeanService 
{
    /**
     * 查询概念域注册
     * 
     * @param 编号 概念域注册主键
     * @return 概念域注册
     */
    public KtMean selectKtMeanBy编号(Long 编号);

    /**
     * 查询概念域注册列表
     * 
     * @param ktMean 概念域注册
     * @return 概念域注册集合
     */
    public List<KtMean> selectKtMeanList(KtMean ktMean);

    /**
     * 新增概念域注册
     * 
     * @param ktMean 概念域注册
     * @return 结果
     */
    public int insertKtMean(KtMean ktMean);

    /**
     * 修改概念域注册
     * 
     * @param ktMean 概念域注册
     * @return 结果
     */
    public int updateKtMean(KtMean ktMean);

    /**
     * 批量删除概念域注册
     * 
     * @param 编号s 需要删除的概念域注册主键集合
     * @return 结果
     */
    public int deleteKtMeanBy编号s(String 编号s);

    /**
     * 删除概念域注册信息
     * 
     * @param 编号 概念域注册主键
     * @return 结果
     */
    public int deleteKtMeanBy编号(Long 编号);
}
