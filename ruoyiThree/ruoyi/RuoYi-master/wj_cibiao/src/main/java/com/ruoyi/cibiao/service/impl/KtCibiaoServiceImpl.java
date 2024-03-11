package com.ruoyi.cibiao.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cibiao.mapper.KtCibiaoMapper;
import com.ruoyi.cibiao.domain.KtCibiao;
import com.ruoyi.cibiao.service.IKtCibiaoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 词表基本信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-03
 */
@Service
public class KtCibiaoServiceImpl implements IKtCibiaoService 
{
    @Autowired
    private KtCibiaoMapper ktCibiaoMapper;

    /**
     * 查询词表基本信息
     * 
     * @param cbId 词表基本信息主键
     * @return 词表基本信息
     */
    @Override
    public KtCibiao selectKtCibiaoByCbId(Long cbId)
    {
        return ktCibiaoMapper.selectKtCibiaoByCbId(cbId);
    }

    /**
     * 查询词表基本信息列表
     * 
     * @param ktCibiao 词表基本信息
     * @return 词表基本信息
     */
    @Override
    public List<KtCibiao> selectKtCibiaoList(KtCibiao ktCibiao)
    {
        return ktCibiaoMapper.selectKtCibiaoList(ktCibiao);
    }

    /**
     * 新增词表基本信息
     * 
     * @param ktCibiao 词表基本信息
     * @return 结果
     */
    @Override
    public int insertKtCibiao(KtCibiao ktCibiao)
    {
        return ktCibiaoMapper.insertKtCibiao(ktCibiao);
    }

    /**
     * 修改词表基本信息
     * 
     * @param ktCibiao 词表基本信息
     * @return 结果
     */
    @Override
    public int updateKtCibiao(KtCibiao ktCibiao)
    {
        return ktCibiaoMapper.updateKtCibiao(ktCibiao);
    }

    /**
     * 批量删除词表基本信息
     * 
     * @param cbIds 需要删除的词表基本信息主键
     * @return 结果
     */
    @Override
    public int deleteKtCibiaoByCbIds(String cbIds)
    {
        return ktCibiaoMapper.deleteKtCibiaoByCbIds(Convert.toStrArray(cbIds));
    }

    /**
     * 删除词表基本信息信息
     * 
     * @param cbId 词表基本信息主键
     * @return 结果
     */
    @Override
    public int deleteKtCibiaoByCbId(Long cbId)
    {
        return ktCibiaoMapper.deleteKtCibiaoByCbId(cbId);
    }
}
