package com.google.appinventor.components.runtime.errors;

import _COROUTINE.a;

/* loaded from: classes.dex */
public class PermissionException extends RuntimeException {
    private final String permissionNeeded;

    public PermissionException(String str) {
        this.permissionNeeded = str;
    }

    public String getPermissionNeeded() {
        return this.permissionNeeded;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return a.i("Unable to complete the operation because the user denied permission: ", this.permissionNeeded);
    }
}
