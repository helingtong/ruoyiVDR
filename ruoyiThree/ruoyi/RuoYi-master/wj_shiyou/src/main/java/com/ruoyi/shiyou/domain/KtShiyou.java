package com.ruoyi.shiyou.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 石油领域词汇表对象 kt_shiyou
 * 
 * @author w
 * @date 2023-03-03
 */
public class KtShiyou extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** sy_id */
    private Long syId;

    /** 词汇表名称 */
    @Excel(name = "词汇表名称")
    private String 词汇表名称;

    /** 英文名称 */
    @Excel(name = "英文名称")
    private String 英文名称;

    /** 中文名称 */
    @Excel(name = "中文名称")
    private String 中文名称;

    /** 英文解释 */
    @Excel(name = "英文解释")
    private String 英文解释;

    public void setSyId(Long syId) 
    {
        this.syId = syId;
    }

    public Long getSyId() 
    {
        return syId;
    }
    public void set词汇表名称(String 词汇表名称) 
    {
        this.词汇表名称 = 词汇表名称;
    }

    public String get词汇表名称() 
    {
        return 词汇表名称;
    }
    public void set英文名称(String 英文名称) 
    {
        this.英文名称 = 英文名称;
    }

    public String get英文名称() 
    {
        return 英文名称;
    }
    public void set中文名称(String 中文名称) 
    {
        this.中文名称 = 中文名称;
    }

    public String get中文名称() 
    {
        return 中文名称;
    }
    public void set英文解释(String 英文解释) 
    {
        this.英文解释 = 英文解释;
    }

    public String get英文解释() 
    {
        return 英文解释;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("syId", getSyId())
            .append("词汇表名称", get词汇表名称())
            .append("英文名称", get英文名称())
            .append("中文名称", get中文名称())
            .append("英文解释", get英文解释())
            .toString();
    }
}
