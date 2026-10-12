package com.airbnb.lottie.model;

/* loaded from: classes.dex */
public class Marker {

    /* renamed from: a, reason: collision with root package name */
    public final String f2587a;
    public final float durationFrames;
    public final float startFrame;

    public Marker(String str, float f, float f2) {
        this.f2587a = str;
        this.durationFrames = f2;
        this.startFrame = f;
    }

    public boolean matchesName(String str) {
        String str2 = this.f2587a;
        if (str2.equalsIgnoreCase(str)) {
            return true;
        }
        return str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str);
    }
}
