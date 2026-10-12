package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtCompatible
/* loaded from: classes.dex */
public final class BoundType {
    public static final BoundType CLOSED;
    public static final BoundType OPEN;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ BoundType[] f3846a;

    public static BoundType valueOf(String str) {
        return (BoundType) Enum.valueOf(BoundType.class, str);
    }

    public static BoundType[] values() {
        return (BoundType[]) f3846a.clone();
    }

    static {
        BoundType boundType = new BoundType("OPEN", 0);
        OPEN = boundType;
        BoundType boundType2 = new BoundType("CLOSED", 1);
        CLOSED = boundType2;
        f3846a = new BoundType[]{boundType, boundType2};
    }

    public static BoundType a(boolean z) {
        return z ? CLOSED : OPEN;
    }
}
