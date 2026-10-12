package com.google.appinventor.components.common;

import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtSensorMode implements OptionList<Integer> {
    Raw(0),
    Boolean(32),
    TransitionCount(96),
    PeriodCount(96),
    Percentage(128),
    RcxCelsius(ComponentConstants.TEXTBOX_PREFERRED_WIDTH),
    RcxFahrenheit(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE),
    RcxAngleSteps(224);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3579b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3580a;

    static {
        for (NxtSensorMode nxtSensorMode : values()) {
            f3579b.put(nxtSensorMode.toUnderlyingValue(), nxtSensorMode);
        }
    }

    NxtSensorMode(int i) {
        this.f3580a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3580a);
    }

    public static NxtSensorMode fromUnderlyingValue(Integer num) {
        return (NxtSensorMode) f3579b.get(num);
    }
}
