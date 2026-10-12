package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;

@GwtIncompatible
/* loaded from: classes.dex */
final class k5 {

    public static final class b<T> {
    }

    private k5() {
    }

    public static void a(Class cls, String str) throws SecurityException {
        try {
            cls.getDeclaredField(str).setAccessible(true);
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }
}
