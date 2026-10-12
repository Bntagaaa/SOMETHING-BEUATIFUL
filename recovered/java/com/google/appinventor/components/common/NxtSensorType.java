package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtSensorType implements OptionList<Integer> {
    NoSensor(0),
    Touch(1),
    LightOn(5),
    LightOff(6),
    SoundDB(7),
    SoundDBA(8),
    ColorFull(13),
    ColorRed(14),
    ColorGreen(15),
    ColorBlue(16),
    ColorNone(17),
    Digital12C(10),
    Digital12C9V(11),
    RcxTemperature(2),
    RcxLight(3),
    RcxAngle(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3583b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3584a;

    static {
        for (NxtSensorType nxtSensorType : values()) {
            f3583b.put(nxtSensorType.toUnderlyingValue(), nxtSensorType);
        }
    }

    NxtSensorType(int i) {
        this.f3584a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3584a);
    }

    public static NxtSensorType fromUnderlyingValue(Integer num) {
        return (NxtSensorType) f3583b.get(num);
    }
}
