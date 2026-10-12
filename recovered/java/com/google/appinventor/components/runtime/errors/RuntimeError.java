package com.google.appinventor.components.runtime.errors;

import com.google.appinventor.components.annotations.SimpleObject;

@SimpleObject
/* loaded from: classes.dex */
public abstract class RuntimeError extends RuntimeException {
    public RuntimeError() {
    }

    public RuntimeError(String str) {
        super(str);
    }

    public static RuntimeError convertToRuntimeError(Throwable th) {
        if (th instanceof RuntimeError) {
            return (RuntimeError) th;
        }
        if (th instanceof ArrayIndexOutOfBoundsException) {
            return new ArrayIndexOutOfBoundsError();
        }
        if (th instanceof IllegalArgumentException) {
            return new IllegalArgumentError();
        }
        if (th instanceof NullPointerException) {
            return new UninitializedInstanceError();
        }
        throw new UnsupportedOperationException(th);
    }
}
