package com.ruoyi.allow.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 允许值对象 allow
 * 
 * @author ruoyi
 * @date 2024-03-11
 */
public class Allow extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 允许值id */
    @Excel(name = "允许值id")
    private String allowId;

    /** 值 */
    @Excel(name = "值")
    private String allowValue;

    /** 注释 */
    @Excel(name = "注释")
    private String allowNote;

    public void setAllowId(String allowId) 
    {
        this.allowId = allowId;
    }

    public String getAllowId() 
    {
        return allowId;
    }
    public void setAllowValue(String allowValue) 
    {
        this.allowValue = allowValue;
    }

    public String getAllowValue() 
    {
        return allowValue;
    }
    public void setAllowNote(String allowNote) 
    {
        this.allowNote = allowNote;
    }

    public String getAllowNote() 
    {
        return allowNote;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("allowId", getAllowId())
            .append("allowValue", getAllowValue())
            .append("allowNote", getAllowNote())
            .toString();
    }
}
