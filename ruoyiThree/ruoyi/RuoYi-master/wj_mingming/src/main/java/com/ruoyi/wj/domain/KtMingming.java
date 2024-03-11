package com.ruoyi.wj.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 命名空间管理对象 kt_mingming
 * 
 * @author w
 * @date 2023-03-02
 */
public class KtMingming extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** mm_id */
    private Long mmId;

    /** Prefix */
    @Excel(name = "Prefix")
    private String prefix;

    /** Namespace */
    @Excel(name = "Namespace")
    private String namespace;

    /** Authority */
    @Excel(name = "Authority")
    private String authority;

    /** Reference */
    @Excel(name = "Reference")
    private String reference;

    public void setMmId(Long mmId) 
    {
        this.mmId = mmId;
    }

    public Long getMmId() 
    {
        return mmId;
    }
    public void setPrefix(String prefix) 
    {
        this.prefix = prefix;
    }

    public String getPrefix() 
    {
        return prefix;
    }
    public void setNamespace(String namespace) 
    {
        this.namespace = namespace;
    }

    public String getNamespace() 
    {
        return namespace;
    }
    public void setAuthority(String authority) 
    {
        this.authority = authority;
    }

    public String getAuthority() 
    {
        return authority;
    }
    public void setReference(String reference) 
    {
        this.reference = reference;
    }

    public String getReference() 
    {
        return reference;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("mmId", getMmId())
            .append("prefix", getPrefix())
            .append("namespace", getNamespace())
            .append("authority", getAuthority())
            .append("reference", getReference())
            .toString();
    }
}
