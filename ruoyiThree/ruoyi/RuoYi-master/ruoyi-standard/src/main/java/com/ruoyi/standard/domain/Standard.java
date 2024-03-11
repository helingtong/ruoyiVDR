package com.ruoyi.standard.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 标准信息管理对象 standard
 * 
 * @author ruoyi
 * @date 2024-03-10
 */
public class Standard extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 标准号 */
    private String standardId;

    /** 标准英文名 */
    @Excel(name = "标准英文名")
    private String englishName;

    /** 标准中文名 */
    @Excel(name = "标准中文名")
    private String chineseName;

    /** 发布机构 */
    @Excel(name = "发布机构")
    private String standardOrganization;

    /** 标准状态 */
    @Excel(name = "标准状态")
    private String standardCondition;

    /** 标准简介 */
    @Excel(name = "标准简介")
    private String standardIntroduction;

    public void setStandardId(String standardId) 
    {
        this.standardId = standardId;
    }

    public String getStandardId() 
    {
        return standardId;
    }
    public void setEnglishName(String englishName) 
    {
        this.englishName = englishName;
    }

    public String getEnglishName() 
    {
        return englishName;
    }
    public void setChineseName(String chineseName) 
    {
        this.chineseName = chineseName;
    }

    public String getChineseName() 
    {
        return chineseName;
    }
    public void setStandardOrganization(String standardOrganization) 
    {
        this.standardOrganization = standardOrganization;
    }

    public String getStandardOrganization() 
    {
        return standardOrganization;
    }
    public void setStandardCondition(String standardCondition) 
    {
        this.standardCondition = standardCondition;
    }

    public String getStandardCondition() 
    {
        return standardCondition;
    }
    public void setStandardIntroduction(String standardIntroduction) 
    {
        this.standardIntroduction = standardIntroduction;
    }

    public String getStandardIntroduction() 
    {
        return standardIntroduction;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("standardId", getStandardId())
            .append("englishName", getEnglishName())
            .append("chineseName", getChineseName())
            .append("standardOrganization", getStandardOrganization())
            .append("standardCondition", getStandardCondition())
            .append("standardIntroduction", getStandardIntroduction())
            .toString();
    }
}
