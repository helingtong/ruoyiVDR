package com.ruoyi.cibiao.mapper;

import java.util.List;
import com.ruoyi.cibiao.domain.KtCibiao;

/**
 * 词表基本信息Mapper接口
 * 
 * @author ruoyi
 * @date 2023-03-03
 */
public interface KtCibiaoMapper 
{
    /**
     * 查询词表基本信息
     * 
     * @param cbId 词表基本信息主键
     * @return 词表基本信息
     */
    public KtCibiao selectKtCibiaoByCbId(Long cbId);

    /**
     * 查询词表基本信息列表
     * 
     * @param ktCibiao 词表基本信息
     * @return 词表基本信息集合
     */
    public List<KtCibiao> selectKtCibiaoList(KtCibiao ktCibiao);

    /**
     * 新增词表基本信息
     * 
     * @param ktCibiao 词表基本信息
     * @return 结果
     */
    public int insertKtCibiao(KtCibiao ktCibiao);

    /**
     * 修改词表基本信息
     * 
     * @param ktCibiao 词表基本信息
     * @return 结果
     */
    public int updateKtCibiao(KtCibiao ktCibiao);

    /**
     * 删除词表基本信息
     * 
     * @param cbId 词表基本信息主键
     * @return 结果
     */
    public int deleteKtCibiaoByCbId(Long cbId);

    /**
     * 批量删除词表基本信息
     * 
     * @param cbIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKtCibiaoByCbIds(String[] cbIds);
}
