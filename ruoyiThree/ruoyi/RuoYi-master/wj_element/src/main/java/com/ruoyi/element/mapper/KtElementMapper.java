package com.ruoyi.element.mapper;

import java.util.List;
import com.ruoyi.element.domain.KtElement;

/**
 * 数据元目录Mapper接口
 * 
 * @author w
 * @date 2023-03-05
 */
public interface KtElementMapper 
{
    /**
     * 查询数据元目录
     * 
     * @param 编号 数据元目录主键
     * @return 数据元目录
     */
    public KtElement selectKtElementBy编号(Long 编号);

    /**
     * 查询数据元目录列表
     * 
     * @param ktElement 数据元目录
     * @return 数据元目录集合
     */
    public List<KtElement> selectKtElementList(KtElement ktElement);

    /**
     * 新增数据元目录
     * 
     * @param ktElement 数据元目录
     * @return 结果
     */
    public int insertKtElement(KtElement ktElement);

    /**
     * 修改数据元目录
     * 
     * @param ktElement 数据元目录
     * @return 结果
     */
    public int updateKtElement(KtElement ktElement);

    /**
     * 删除数据元目录
     * 
     * @param 编号 数据元目录主键
     * @return 结果
     */
    public int deleteKtElementBy编号(Long 编号);

    /**
     * 批量删除数据元目录
     * 
     * @param 编号s 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKtElementBy编号s(String[] 编号s);
}
