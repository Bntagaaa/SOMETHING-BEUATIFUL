package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class RemovalCause {
    public static final RemovalCause COLLECTED;
    public static final RemovalCause EXPIRED;
    public static final RemovalCause EXPLICIT;
    public static final RemovalCause REPLACED;
    public static final RemovalCause SIZE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ RemovalCause[] f3773a;

    public abstract boolean a();

    public static RemovalCause valueOf(String str) {
        return (RemovalCause) Enum.valueOf(RemovalCause.class, str);
    }

    public static RemovalCause[] values() {
        return (RemovalCause[]) f3773a.clone();
    }

    static {
        RemovalCause removalCause = new RemovalCause() { // from class: com.google.common.cache.RemovalCause.a
            @Override // com.google.common.cache.RemovalCause
            public final boolean a() {
                return false;
            }
        };
        EXPLICIT = removalCause;
        RemovalCause removalCause2 = new RemovalCause() { // from class: com.google.common.cache.RemovalCause.b
            @Override // com.google.common.cache.RemovalCause
            public final boolean a() {
                return false;
            }
        };
        REPLACED = removalCause2;
        RemovalCause removalCause3 = new RemovalCause() { // from class: com.google.common.cache.RemovalCause.c
            @Override // com.google.common.cache.RemovalCause
            public final boolean a() {
                return true;
            }
        };
        COLLECTED = removalCause3;
        RemovalCause removalCause4 = new RemovalCause() { // from class: com.google.common.cache.RemovalCause.d
            @Override // com.google.common.cache.RemovalCause
            public final boolean a() {
                return true;
            }
        };
        EXPIRED = removalCause4;
        RemovalCause removalCause5 = new RemovalCause() { // from class: com.google.common.cache.RemovalCause.e
            @Override // com.google.common.cache.RemovalCause
            public final boolean a() {
                return true;
            }
        };
        SIZE = removalCause5;
        f3773a = new RemovalCause[]{removalCause, removalCause2, removalCause3, removalCause4, removalCause5};
    }
}
