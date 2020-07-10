package com.nero.strutsTags.action;

import com.nero.strutsTags.model.MessageStore;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldAction extends ActionSupport {
    private MessageStore messageStore;
    private String userName="";

    @Override
    public String execute() throws Exception {
        ActionContext ac = ActionContext.getContext();
        int count = 1;
        if (ac.getSession().get("count") == null) {
            ac.getSession().put("count", 1);
        } else {
            count = Integer.parseInt(ac.getSession().get("count").toString())+1;
            ac.getSession().put("count", count);
            throw new java.lang.Exception();
        }
        messageStore = new MessageStore(userName + count);
        return SUCCESS;
    }

    public String gerErr() throws Exception{
        return ERROR;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
