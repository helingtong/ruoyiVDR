package com.ruoyi.element.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数据元目录对象 kt_element
 * 
 * @author w
 * @date 2023-03-05
 */
public class KtElement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long 编号;

    /** 数据元名称 */
    @Excel(name = "数据元名称")
    private String 数据元名称;

    /** 对象类限定词 */
    @Excel(name = "对象类限定词")
    private String 对象类限定词;

    /** 对象类 */
    @Excel(name = "对象类")
    private String 对象类;

    /** 特性类限定词 */
    @Excel(name = "特性类限定词")
    private String 特性类限定词;

    /** 特性类 */
    @Excel(name = "特性类")
    private String 特性类;

    /** 表示类 */
    @Excel(name = "表示类")
    private String 表示类;

    /** 计量单位 */
    @Excel(name = "计量单位")
    private String 计量单位;

    public void set编号(Long 编号) 
    {
        this.编号 = 编号;
    }

    public Long get编号() 
    {
        return 编号;
    }
    public void set数据元名称(String 数据元名称) 
    {
        this.数据元名称 = 数据元名称;
    }

    public String get数据元名称() 
    {
        return 数据元名称;
    }
    public void set对象类限定词(String 对象类限定词) 
    {
        this.对象类限定词 = 对象类限定词;
    }

    public String get对象类限定词() 
    {
        return 对象类限定词;
    }
    public void set对象类(String 对象类) 
    {
        this.对象类 = 对象类;
    }

    public String get对象类() 
    {
        return 对象类;
    }
    public void set特性类限定词(String 特性类限定词) 
    {
        this.特性类限定词 = 特性类限定词;
    }

    public String get特性类限定词() 
    {
        return 特性类限定词;
    }
    public void set特性类(String 特性类) 
    {
        this.特性类 = 特性类;
    }

    public String get特性类() 
    {
        return 特性类;
    }
    public void set表示类(String 表示类) 
    {
        this.表示类 = 表示类;
    }

    public String get表示类() 
    {
        return 表示类;
    }
    public void set计量单位(String 计量单位) 
    {
        this.计量单位 = 计量单位;
    }

    public String get计量单位() 
    {
        return 计量单位;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("编号", get编号())
            .append("数据元名称", get数据元名称())
            .append("对象类限定词", get对象类限定词())
            .append("对象类", get对象类())
            .append("特性类限定词", get特性类限定词())
            .append("特性类", get特性类())
            .append("表示类", get表示类())
            .append("计量单位", get计量单位())
            .toString();
    }
}
