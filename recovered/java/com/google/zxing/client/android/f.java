package com.google.zxing.client.android;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f5135a;

    /* renamed from: b, reason: collision with root package name */
    public static final f f5136b;
    public static final f c;
    public static final /* synthetic */ f[] d;

    public static f[] values() {
        return (f[]) d.clone();
    }

    static {
        f fVar = new f("NATIVE_APP_INTENT", 0);
        f5135a = fVar;
        f fVar2 = new f("PRODUCT_SEARCH_LINK", 1);
        f fVar3 = new f("ZXING_LINK", 2);
        f5136b = fVar3;
        f fVar4 = new f("NONE", 3);
        c = fVar4;
        d = new f[]{fVar, fVar2, fVar3, fVar4};
    }
}
