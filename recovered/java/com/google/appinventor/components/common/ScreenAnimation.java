package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ScreenAnimation implements OptionList<String> {
    Default("default"),
    Fade("fade"),
    Zoom("zoom"),
    SlideHorizontal("slidehorizontal"),
    SlideVertical("slidevertical"),
    None("none");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3597b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3598a;

    static {
        for (ScreenAnimation screenAnimation : values()) {
            f3597b.put(screenAnimation.toUnderlyingValue(), screenAnimation);
        }
    }

    ScreenAnimation(String str) {
        this.f3598a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3598a;
    }

    public static ScreenAnimation fromUnderlyingValue(String str) {
        return (ScreenAnimation) f3597b.get(str);
    }
}
