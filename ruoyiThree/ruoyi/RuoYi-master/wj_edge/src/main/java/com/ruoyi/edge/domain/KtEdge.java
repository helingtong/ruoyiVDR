package com.ruoyi.edge.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 关系注册对象 kt_edge
 * 
 * @author w
 * @date 2023-03-09
 */
public class KtEdge extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** link_id */
    private Long linkId;

    /** l_id */
    @Excel(name = "l_id")
    private String lId;

    /** source */
    @Excel(name = "source")
    private String source;

    /** relation */
    @Excel(name = "relation")
    private String relation;

    /** end_role */
    @Excel(name = "end_role")
    private String endRole;

    /** end */
    @Excel(name = "end")
    private String end;

    /** 同义名称 */
    @Excel(name = "同义名称")
    private String 同义名称;

    public void setLinkId(Long linkId) 
    {
        this.linkId = linkId;
    }

    public Long getLinkId() 
    {
        return linkId;
    }
    public void setlId(String lId) 
    {
        this.lId = lId;
    }

    public String getlId() 
    {
        return lId;
    }
    public void setSource(String source) 
    {
        this.source = source;
    }

    public String getSource() 
    {
        return source;
    }
    public void setRelation(String relation) 
    {
        this.relation = relation;
    }

    public String getRelation() 
    {
        return relation;
    }
    public void setEndRole(String endRole) 
    {
        this.endRole = endRole;
    }

    public String getEndRole() 
    {
        return endRole;
    }
    public void setEnd(String end) 
    {
        this.end = end;
    }

    public String getEnd() 
    {
        return end;
    }
    public void set同义名称(String 同义名称) 
    {
        this.同义名称 = 同义名称;
    }

    public String get同义名称() 
    {
        return 同义名称;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("linkId", getLinkId())
            .append("lId", getlId())
            .append("source", getSource())
            .append("relation", getRelation())
            .append("endRole", getEndRole())
            .append("end", getEnd())
            .append("同义名称", get同义名称())
            .toString();
    }
}
