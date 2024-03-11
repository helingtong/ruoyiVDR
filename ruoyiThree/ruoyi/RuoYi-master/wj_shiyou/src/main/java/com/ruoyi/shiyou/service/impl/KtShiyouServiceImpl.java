package com.ruoyi.shiyou.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.shiyou.mapper.KtShiyouMapper;
import com.ruoyi.shiyou.domain.KtShiyou;
import com.ruoyi.shiyou.service.IKtShiyouService;
import com.ruoyi.common.core.text.Convert;

/**
 * 石油领域词汇表Service业务层处理
 * 
 * @author w
 * @date 2023-03-03
 */
@Service
public class KtShiyouServiceImpl implements IKtShiyouService 
{
    @Autowired
    private KtShiyouMapper ktShiyouMapper;

    /**
     * 查询石油领域词汇表
     * 
     * @param syId 石油领域词汇表主键
     * @return 石油领域词汇表
     */
    @Override
    public KtShiyou selectKtShiyouBySyId(Long syId)
    {
        return ktShiyouMapper.selectKtShiyouBySyId(syId);
    }

    /**
     * 查询石油领域词汇表列表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 石油领域词汇表
     */
    @Override
    public List<KtShiyou> selectKtShiyouList(KtShiyou ktShiyou)
    {
        return ktShiyouMapper.selectKtShiyouList(ktShiyou);
    }

    /**
     * 新增石油领域词汇表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 结果
     */
    @Override
    public int insertKtShiyou(KtShiyou ktShiyou)
    {
        return ktShiyouMapper.insertKtShiyou(ktShiyou);
    }

    /**
     * 修改石油领域词汇表
     * 
     * @param ktShiyou 石油领域词汇表
     * @return 结果
     */
    @Override
    public int updateKtShiyou(KtShiyou ktShiyou)
    {
        return ktShiyouMapper.updateKtShiyou(ktShiyou);
    }

    /**
     * 批量删除石油领域词汇表
     * 
     * @param syIds 需要删除的石油领域词汇表主键
     * @return 结果
     */
    @Override
    public int deleteKtShiyouBySyIds(String syIds)
    {
        return ktShiyouMapper.deleteKtShiyouBySyIds(Convert.toStrArray(syIds));
    }

    /**
     * 删除石油领域词汇表信息
     * 
     * @param syId 石油领域词汇表主键
     * @return 结果
     */
    @Override
    public int deleteKtShiyouBySyId(Long syId)
    {
        return ktShiyouMapper.deleteKtShiyouBySyId(syId);
    }
}
