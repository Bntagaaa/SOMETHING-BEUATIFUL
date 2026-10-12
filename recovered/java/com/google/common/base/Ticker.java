package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.l;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class Ticker {

    /* renamed from: a, reason: collision with root package name */
    public static final Ticker f3728a = new a();

    public abstract long read();

    public static Ticker systemTicker() {
        return f3728a;
    }

    public static class a extends Ticker {
        @Override // com.google.common.base.Ticker
        public long read() {
            l.b bVar = l.f3745a;
            return System.nanoTime();
        }
    }
}
