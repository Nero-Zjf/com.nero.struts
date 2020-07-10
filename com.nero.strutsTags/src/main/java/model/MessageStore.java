package com.nero.strutsTags.model;

public class MessageStore {
    private String message;

    public MessageStore() {
        message = "Hello Struts User";
    }

    public MessageStore(String userName) {
        message = "Hello Struts User "+userName;
    }

    public String getMessage() {
        return message;
    }
}
