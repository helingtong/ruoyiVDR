package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数据元概念注册对象 kt_school
 * 
 * @author ruoyi
 * @date 2023-03-05
 */

public class KtSchool extends BaseEntity
{
    private static final long serialVersionUID = 1L;

/** 学校表的主键ID */

    private Integer scId;

/** 学校名称 */

    @Excel(name = "学校名称")
    private String scName;

/** 所属区域外键 */

    @Excel(name = "所属区域外键")
    private Integer aId;

    public void setScId(Integer scId) 
    {
        this.scId = scId;
    }

    public Integer getScId() 
    {
        return scId;
    }
    public void setScName(String scName) 
    {
        this.scName = scName;
    }

    public String getScName() 
    {
        return scName;
    }
    public void setaId(Integer aId) 
    {
        this.aId = aId;
    }

    public Integer getaId() 
    {
        return aId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("scId", getScId())
            .append("scName", getScName())
            .append("aId", getaId())
            .toString();
    }
}
