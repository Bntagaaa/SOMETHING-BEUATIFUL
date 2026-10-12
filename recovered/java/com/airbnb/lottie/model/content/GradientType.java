package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class GradientType {
    public static final GradientType LINEAR;
    public static final GradientType RADIAL;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ GradientType[] f2607a;

    public static GradientType valueOf(String str) {
        return (GradientType) Enum.valueOf(GradientType.class, str);
    }

    public static GradientType[] values() {
        return (GradientType[]) f2607a.clone();
    }

    static {
        GradientType gradientType = new GradientType("LINEAR", 0);
        LINEAR = gradientType;
        GradientType gradientType2 = new GradientType("RADIAL", 1);
        RADIAL = gradientType2;
        f2607a = new GradientType[]{gradientType, gradientType2};
    }
}
