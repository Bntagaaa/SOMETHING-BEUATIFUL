package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f4417a = new a();

    private b() {
    }

    public static class a extends ThreadLocal<char[]> {
        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[1024];
        }
    }
}
