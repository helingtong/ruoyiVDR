package com.ruoyi.element.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.element.mapper.KtElementMapper;
import com.ruoyi.element.domain.KtElement;
import com.ruoyi.element.service.IKtElementService;
import com.ruoyi.common.core.text.Convert;

/**
 * 数据元目录Service业务层处理
 * 
 * @author w
 * @date 2023-03-05
 */
@Service
public class KtElementServiceImpl implements IKtElementService 
{
    @Autowired
    private KtElementMapper ktElementMapper;

    /**
     * 查询数据元目录
     * 
     * @param 编号 数据元目录主键
     * @return 数据元目录
     */
    @Override
    public KtElement selectKtElementBy编号(Long 编号)
    {
        return ktElementMapper.selectKtElementBy编号(编号);
    }

    /**
     * 查询数据元目录列表
     * 
     * @param ktElement 数据元目录
     * @return 数据元目录
     */
    @Override
    public List<KtElement> selectKtElementList(KtElement ktElement)
    {
        return ktElementMapper.selectKtElementList(ktElement);
    }

    /**
     * 新增数据元目录
     * 
     * @param ktElement 数据元目录
     * @return 结果
     */
    @Override
    public int insertKtElement(KtElement ktElement)
    {
        return ktElementMapper.insertKtElement(ktElement);
    }

    /**
     * 修改数据元目录
     * 
     * @param ktElement 数据元目录
     * @return 结果
     */
    @Override
    public int updateKtElement(KtElement ktElement)
    {
        return ktElementMapper.updateKtElement(ktElement);
    }

    /**
     * 批量删除数据元目录
     * 
     * @param 编号s 需要删除的数据元目录主键
     * @return 结果
     */
    @Override
    public int deleteKtElementBy编号s(String 编号s)
    {
        return ktElementMapper.deleteKtElementBy编号s(Convert.toStrArray(编号s));
    }

    /**
     * 删除数据元目录信息
     * 
     * @param 编号 数据元目录主键
     * @return 结果
     */
    @Override
    public int deleteKtElementBy编号(Long 编号)
    {
        return ktElementMapper.deleteKtElementBy编号(编号);
    }
}
