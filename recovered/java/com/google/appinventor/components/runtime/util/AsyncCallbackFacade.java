package com.google.appinventor.components.runtime.util;

/* loaded from: classes.dex */
public abstract class AsyncCallbackFacade<S, T> implements AsyncCallbackPair<S> {
    protected final AsyncCallbackPair<T> callback;

    public AsyncCallbackFacade(AsyncCallbackPair<T> asyncCallbackPair) {
        this.callback = asyncCallbackPair;
    }

    @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
    public void onFailure(String str) {
        this.callback.onFailure(str);
    }
}
