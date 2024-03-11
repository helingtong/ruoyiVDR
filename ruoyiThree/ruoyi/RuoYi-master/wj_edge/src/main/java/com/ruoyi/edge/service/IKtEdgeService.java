package com.ruoyi.edge.service;

import java.util.List;
import com.ruoyi.edge.domain.KtEdge;

/**
 * 关系注册Service接口
 * 
 * @author w
 * @date 2023-03-09
 */
public interface IKtEdgeService 
{
    /**
     * 查询关系注册
     * 
     * @param linkId 关系注册主键
     * @return 关系注册
     */
    public KtEdge selectKtEdgeByLinkId(Long linkId);

    /**
     * 查询关系注册列表
     * 
     * @param ktEdge 关系注册
     * @return 关系注册集合
     */
    public List<KtEdge> selectKtEdgeList(KtEdge ktEdge);

    /**
     * 新增关系注册
     * 
     * @param ktEdge 关系注册
     * @return 结果
     */
    public int insertKtEdge(KtEdge ktEdge);

    /**
     * 修改关系注册
     * 
     * @param ktEdge 关系注册
     * @return 结果
     */
    public int updateKtEdge(KtEdge ktEdge);

    /**
     * 批量删除关系注册
     * 
     * @param linkIds 需要删除的关系注册主键集合
     * @return 结果
     */
    public int deleteKtEdgeByLinkIds(String linkIds);

    /**
     * 删除关系注册信息
     * 
     * @param linkId 关系注册主键
     * @return 结果
     */
    public int deleteKtEdgeByLinkId(Long linkId);
}
