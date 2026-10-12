package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum Animation implements OptionList<String> {
    DropOut("DropOut"),
    Landing("Landing"),
    TakingOff("TakingOff"),
    Flash("Flash"),
    Pulse("Pulse"),
    RubberBand("RubberBand"),
    Shake("Shake"),
    Swing("Swing"),
    Wobble("Wobble"),
    Bounce("Bounce"),
    Tada("Tada"),
    StandUp("StandUp"),
    Wave("Wave"),
    Hinge("Hinge"),
    RollIn("RollIn"),
    RollOut("RollOut"),
    BounceIn("BounceIn"),
    BounceInDown("BounceInDown"),
    BounceInLeft("BounceInLeft"),
    BounceInRight("BounceInRight"),
    BounceInUp("BounceInUp"),
    FadeIn("FadeIn"),
    FadeInUp("FadeInUp"),
    FadeInDown("FadeInDown"),
    FadeInLeft("FadeInLeft"),
    FadeInRight("FadeInRight"),
    FadeOut("FadeOut"),
    FadeOutDown("FadeOutDown"),
    FadeOutLeft("FadeOutLeft"),
    FadeOutRight("FadeOutRight"),
    FadeOutUp("FadeOutUp"),
    FlipInX("FlipInX"),
    FlipOutX("FlipOutX"),
    FlipInY("FlipInY"),
    FlipOutY("FlipOutY"),
    RotateIn("RotateIn"),
    RotateInDownLeft("RotateInDownLeft"),
    RotateInDownRight("RotateInDownRight"),
    RotateInUpLeft("RotateInUpLeft"),
    RotateInUpRight("RotateInUpRight"),
    RotateOut("RotateOut"),
    RotateOutDownLeft("RotateOutDownLeft"),
    RotateOutDownRight("RotateOutDownRight"),
    RotateOutUpLeft("RotateOutUpLeft"),
    RotateOutUpRight("RotateOutUpRight"),
    SlideInLeft("SlideInLeft"),
    SlideInRight("SlideInRight"),
    SlideInUp("SlideInUp"),
    SlideInDown("SlideInDown"),
    SlideOutLeft("SlideOutLeft"),
    SlideOutRight("SlideOutRight"),
    SlideOutUp("SlideOutUp"),
    SlideOutDown("SlideOutDown"),
    ZoomIn("ZoomIn"),
    ZoomInDown("ZoomInDown"),
    ZoomInLeft("ZoomInLeft"),
    ZoomInRight("ZoomInRight"),
    ZoomInUp("ZoomInUp"),
    ZoomOut("ZoomOut"),
    ZoomOutDown("ZoomOutDown"),
    ZoomOutLeft("ZoomOutLeft"),
    ZoomOutRight("ZoomOutRight"),
    ZoomOutUp("ZoomOutUp");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3511b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3512a;

    static {
        for (Animation animation : values()) {
            f3511b.put(animation.toUnderlyingValue(), animation);
        }
    }

    Animation(String str) {
        this.f3512a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3512a;
    }

    public static Animation fromUnderlyingValue(String str) {
        return (Animation) f3511b.get(str);
    }
}
