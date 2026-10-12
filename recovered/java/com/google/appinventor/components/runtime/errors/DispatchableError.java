package com.google.appinventor.components.runtime.errors;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.util.Arrays;

/* loaded from: classes.dex */
public class DispatchableError extends RuntimeError {
    private final Object[] arguments;
    private final int errorCode;

    public DispatchableError(int i) {
        super(ErrorMessages.formatMessage(i, null));
        this.errorCode = i;
        this.arguments = new Object[0];
    }

    public DispatchableError(int i, Object... objArr) {
        super(ErrorMessages.formatMessage(i, objArr));
        this.errorCode = i;
        this.arguments = objArr;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public Object[] getArguments() {
        Object[] objArr = this.arguments;
        return Arrays.copyOf(objArr, objArr.length);
    }
}
