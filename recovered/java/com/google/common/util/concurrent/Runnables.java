package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class Runnables {

    /* renamed from: a, reason: collision with root package name */
    public static final Runnable f4979a = new a();

    public static class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static Runnable doNothing() {
        return f4979a;
    }

    private Runnables() {
    }
}
