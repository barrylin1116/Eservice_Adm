package com.twfhclife.generic.api_model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

import com.twfhclife.generic.model.Pagination;

public class ParamAddRequestVo extends Pagination {

	@NotEmpty(message = "cannot empty!")
	private String systemId;

	@NotNull(message = "cannot empty!")
	private Integer parameterCategoryId;

	// @NotEmpty(message = "cannot empty!")
	// private String parameterId;

	@NotEmpty(message = "cannot empty!")
	private String parameterCode;

	@NotEmpty(message = "cannot empty!")
	private String parameterName;

	@NotEmpty(message = "cannot empty!")
	private String parameterValue;

	private Integer parentParameterId;

	@Range(min = 0, max = 999)
	private Integer sortNo;

	@Range(min = 0, max = 1)
	private Integer status;

	private String remark;

	@Pattern(regexp = "[YN]", message = "只能輸入Y/N")
	private String encryptType;

	@NotEmpty(message = "cannot empty!")
	private String createUser;

	public String getSystemId() {
		return systemId;
	}

	public void setSystemId(String systemId) {
		this.systemId = systemId;
	}

	public Integer getParameterCategoryId() {
		return parameterCategoryId;
	}

	public void setParameterCategoryId(Integer parameterCategoryId) {
		this.parameterCategoryId = parameterCategoryId;
	}

	public String getParameterCode() {
		return parameterCode;
	}

	public void setParameterCode(String parameterCode) {
		this.parameterCode = parameterCode;
	}

	public String getParameterName() {
		return parameterName;
	}

	public void setParameterName(String parameterName) {
		this.parameterName = parameterName;
	}

	public String getParameterValue() {
		return parameterValue;
	}

	public void setParameterValue(String parameterValue) {
		this.parameterValue = parameterValue;
	}

	public Integer getParentParameterId() {
		return parentParameterId;
	}

	public void setParentParameterId(Integer parentParameterId) {
		this.parentParameterId = parentParameterId;
	}

	public Integer getSortNo() {
		return sortNo;
	}

	public void setSortNo(Integer sortNo) {
		this.sortNo = sortNo;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getEncryptType() {
		return encryptType;
	}

	public void setEncryptType(String encryptType) {
		this.encryptType = encryptType;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
