package com.twfhclife.adm.model;

import java.io.Serializable;

public class JdUserDetailVo implements Serializable {
    private String systemAccountOutput;
    private String userAccountStatusListOutput;
    private String userNameOutput;
    private String salesNumberOutput;
    private String deptSelectOutput;
    private String branchSelectOutput;
    private String roleNameSelectOutput;

    public String getSystemAccountOutput() {
        return systemAccountOutput;
    }

    public void setSystemAccountOutput(String systemAccountOutput) {
        this.systemAccountOutput = systemAccountOutput;
    }

    public String getUserAccountStatusListOutput() {
        return userAccountStatusListOutput;
    }

    public void setUserAccountStatusListOutput(String userAccountStatusListOutput) {
        this.userAccountStatusListOutput = userAccountStatusListOutput;
    }

    public String getUserNameOutput() {
        return userNameOutput;
    }

    public void setUserNameOutput(String userNameOutput) {
        this.userNameOutput = userNameOutput;
    }

    public String getSalesNumberOutput() {
        return salesNumberOutput;
    }

    public void setSalesNumberOutput(String salesNumberOutput) {
        this.salesNumberOutput = salesNumberOutput;
    }

    public String getDeptSelectOutput() {
        return deptSelectOutput;
    }

    public void setDeptSelectOutput(String deptSelectOutput) {
        this.deptSelectOutput = deptSelectOutput;
    }

    public String getBranchSelectOutput() {
        return branchSelectOutput;
    }

    public void setBranchSelectOutput(String branchSelectOutput) {
        this.branchSelectOutput = branchSelectOutput;
    }

    public String getRoleNameSelectOutput() {
        return roleNameSelectOutput;
    }

    public void setRoleNameSelectOutput(String roleNameSelectOutput) {
        this.roleNameSelectOutput = roleNameSelectOutput;
    }
}
