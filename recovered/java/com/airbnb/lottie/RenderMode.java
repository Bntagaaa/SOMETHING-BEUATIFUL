package com.airbnb.lottie;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class RenderMode {
    public static final RenderMode AUTOMATIC;
    public static final RenderMode HARDWARE;
    public static final RenderMode SOFTWARE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ RenderMode[] f2506a;

    public static RenderMode valueOf(String str) {
        return (RenderMode) Enum.valueOf(RenderMode.class, str);
    }

    public static RenderMode[] values() {
        return (RenderMode[]) f2506a.clone();
    }

    static {
        RenderMode renderMode = new RenderMode("AUTOMATIC", 0);
        AUTOMATIC = renderMode;
        RenderMode renderMode2 = new RenderMode("HARDWARE", 1);
        HARDWARE = renderMode2;
        RenderMode renderMode3 = new RenderMode("SOFTWARE", 2);
        SOFTWARE = renderMode3;
        f2506a = new RenderMode[]{renderMode, renderMode2, renderMode3};
    }
}
