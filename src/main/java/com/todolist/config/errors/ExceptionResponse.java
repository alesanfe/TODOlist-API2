package com.todolist.config.errors;

import java.time.LocalDate;

public class ExceptionResponse {
    private final LocalDate timestamp;
    private final String msg;
    private final String path;
    private final String status;

    public ExceptionResponse(LocalDate timestamp, String message, String path, String status) {
        super();
        this.timestamp = timestamp;
        this.msg = message != null ? (message.contains(":") ? message.split(":")[1] : message) : message;
        this.path = path;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public LocalDate getTimestamp() {
        return timestamp;
    }

    public String getMsg() {
        return msg;
    }

    public String getPath() {
        return path;
    }

}