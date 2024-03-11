package com.ruoyi.edge.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.edge.mapper.KtEdgeMapper;
import com.ruoyi.edge.domain.KtEdge;
import com.ruoyi.edge.service.IKtEdgeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 关系注册Service业务层处理
 * 
 * @author w
 * @date 2023-03-09
 */
@Service
public class KtEdgeServiceImpl implements IKtEdgeService 
{
    @Autowired
    private KtEdgeMapper ktEdgeMapper;

    /**
     * 查询关系注册
     * 
     * @param linkId 关系注册主键
     * @return 关系注册
     */
    @Override
    public KtEdge selectKtEdgeByLinkId(Long linkId)
    {
        return ktEdgeMapper.selectKtEdgeByLinkId(linkId);
    }

    /**
     * 查询关系注册列表
     * 
     * @param ktEdge 关系注册
     * @return 关系注册
     */
    @Override
    public List<KtEdge> selectKtEdgeList(KtEdge ktEdge)
    {
        return ktEdgeMapper.selectKtEdgeList(ktEdge);
    }

    /**
     * 新增关系注册
     * 
     * @param ktEdge 关系注册
     * @return 结果
     */
    @Override
    public int insertKtEdge(KtEdge ktEdge)
    {
        return ktEdgeMapper.insertKtEdge(ktEdge);
    }

    /**
     * 修改关系注册
     * 
     * @param ktEdge 关系注册
     * @return 结果
     */
    @Override
    public int updateKtEdge(KtEdge ktEdge)
    {
        return ktEdgeMapper.updateKtEdge(ktEdge);
    }

    /**
     * 批量删除关系注册
     * 
     * @param linkIds 需要删除的关系注册主键
     * @return 结果
     */
    @Override
    public int deleteKtEdgeByLinkIds(String linkIds)
    {
        return ktEdgeMapper.deleteKtEdgeByLinkIds(Convert.toStrArray(linkIds));
    }

    /**
     * 删除关系注册信息
     * 
     * @param linkId 关系注册主键
     * @return 结果
     */
    @Override
    public int deleteKtEdgeByLinkId(Long linkId)
    {
        return ktEdgeMapper.deleteKtEdgeByLinkId(linkId);
    }
}
