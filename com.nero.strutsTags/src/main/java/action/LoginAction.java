package com.nero.strutsTags.action;

import javax.servlet.http.HttpSession;

import com.nero.strutsTags.domain.User;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
    private User user;
    private String checkCode;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCheckCode() {
        return checkCode;
    }

    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode;
    }

    public String execute() throws Exception {

        return SUCCESS;
    }

    @Override
    public void validate() {
        HttpSession session = ServletActionContext.getRequest().getSession();

        String checkCode2 = (String) session.getAttribute("checkCode");

        if (!checkCode.equals(checkCode2)) {
            addFieldError(checkCode, "输入的验证码不正确,请重新输入");
        }
    }
}
