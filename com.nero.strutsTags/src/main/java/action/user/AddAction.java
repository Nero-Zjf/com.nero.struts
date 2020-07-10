package com.nero.strutsTags.action.user;

import com.nero.strutsTags.domain.User;
import com.nero.strutsTags.utils.Cache;
import com.opensymphony.xwork2.ActionSupport;

public class AddAction extends ActionSupport {
    private User user = new User();
    @Override
    public String execute() throws Exception {
        Cache.user = user;
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (user.getUserName().length() == 0) {
            addFieldError("user.userName", "user name is required.");
        }

        if (user.getQq().length() == 0) {
            addFieldError("user.qq", "qq is required.");
        }

        if (user.getAge() < 18) {
            addFieldError("user.age", "Age is required and must be 18 or older");
        }
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
