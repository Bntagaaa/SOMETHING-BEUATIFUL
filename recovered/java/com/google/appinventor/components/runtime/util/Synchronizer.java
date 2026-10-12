package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;

/* loaded from: classes.dex */
public class Synchronizer<T> {
    private Throwable error;
    private String errorMessage;
    private volatile boolean finished = false;
    private T result;

    public synchronized void waitfor() {
        while (!this.finished) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public synchronized void wakeup(T t) {
        this.finished = true;
        this.result = t;
        notifyAll();
    }

    public synchronized void error(String str) {
        this.finished = true;
        this.errorMessage = str;
        notifyAll();
    }

    public synchronized void caught(Throwable th) {
        this.finished = true;
        this.error = th;
        notifyAll();
    }

    public T getResult() {
        return this.result;
    }

    public String getError() {
        return this.errorMessage;
    }

    public Throwable getThrowable() {
        return this.error;
    }

    public String toString() {
        T t = this.result;
        Throwable th = this.error;
        String str = this.errorMessage;
        StringBuilder sb = new StringBuilder("Synchronizer(");
        sb.append(t);
        sb.append(", ");
        sb.append(th);
        sb.append(", ");
        return a.m(sb, str, ")");
    }
}
