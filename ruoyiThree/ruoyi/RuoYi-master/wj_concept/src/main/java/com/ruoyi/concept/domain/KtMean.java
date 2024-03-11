package com.ruoyi.concept.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 概念域注册对象 kt_mean
 * 
 * @author w
 * @date 2023-03-07
 */
public class KtMean extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long 编号;

    /** 值含义 */
    @Excel(name = "值含义")
    private String 值含义;

    public void set编号(Long 编号) 
    {
        this.编号 = 编号;
    }

    public Long get编号() 
    {
        return 编号;
    }
    public void set值含义(String 值含义) 
    {
        this.值含义 = 值含义;
    }

    public String get值含义() 
    {
        return 值含义;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("编号", get编号())
            .append("值含义", get值含义())
            .toString();
    }
}
