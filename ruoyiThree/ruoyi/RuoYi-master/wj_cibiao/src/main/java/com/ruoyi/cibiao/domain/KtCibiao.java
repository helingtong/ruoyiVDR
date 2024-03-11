package com.ruoyi.cibiao.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 词表基本信息对象 kt_cibiao
 * 
 * @author ruoyi
 * @date 2023-03-03
 */
public class KtCibiao extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** cb_id */
    private Long cbId;

    /** Name */
    @Excel(name = "Name")
    private String name;

    /** Type */
    @Excel(name = "Type")
    private String type;

    /** Comment */
    @Excel(name = "Comment")
    private String comment;

    /** Domain */
    @Excel(name = "Domain")
    private String domain;

    /** Range */
    @Excel(name = "Range")
    private String range;

    public void setCbId(Long cbId) 
    {
        this.cbId = cbId;
    }

    public Long getCbId() 
    {
        return cbId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setComment(String comment) 
    {
        this.comment = comment;
    }

    public String getComment() 
    {
        return comment;
    }
    public void setDomain(String domain) 
    {
        this.domain = domain;
    }

    public String getDomain() 
    {
        return domain;
    }
    public void setRange(String range) 
    {
        this.range = range;
    }

    public String getRange() 
    {
        return range;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cbId", getCbId())
            .append("name", getName())
            .append("type", getType())
            .append("comment", getComment())
            .append("domain", getDomain())
            .append("range", getRange())
            .toString();
    }
}
