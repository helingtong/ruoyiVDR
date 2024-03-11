package com.ruoyi.shiyou.service;

import java.util.List;
import com.ruoyi.shiyou.domain.KtShiyou;

/**
 * 石油领域词汇表Service接口
 * 
 * @author w
 * @date 2023-03-03
 */
public interface IKtShiyouService 
{
    /**
     * 查询石油领域词汇表
     * 
     * @param syId 石油领域词汇表主键
     * @return 石油领域词汇表
     */
    public KtShiyou selectKtShiyouBySyId(Long syId);

    /**
     * 查询石油领域词汇表列表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 石油领域词汇表集合
     */
    public List<KtShiyou> selectKtShiyouList(KtShiyou ktShiyou);

    /**
     * 新增石油领域词汇表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 结果
     */
    public int insertKtShiyou(KtShiyou ktShiyou);

    /**
     * 修改石油领域词汇表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 结果
     */
    public int updateKtShiyou(KtShiyou ktShiyou);

    /**
     * 批量删除石油领域词汇表
     * 
     * @param syIds 需要删除的石油领域词汇表主键集合
     * @return 结果
     */
    public int deleteKtShiyouBySyIds(String syIds);

    /**
     * 删除石油领域词汇表信息
     * 
     * @param syId 石油领域词汇表主键
     * @return 结果
     */
    public int deleteKtShiyouBySyId(Long syId);
}
