package com.google.appinventor.components.runtime.errors;

/* loaded from: classes.dex */
public class YailRuntimeError extends RuntimeError {
    private String errorType;

    public YailRuntimeError(String str, String str2) {
        super(str);
        this.errorType = str2;
    }

    public String getErrorType() {
        return this.errorType;
    }
}
