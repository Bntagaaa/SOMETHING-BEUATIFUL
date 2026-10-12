package com.google.appinventor.components.common;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum MobPubBannerSize implements OptionList<Integer> {
    HeightFill(-1),
    Height_50(50),
    Height_90(90),
    Height_250(Integer.valueOf(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION)),
    Height_280(280);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3565b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3566a;

    static {
        for (MobPubBannerSize mobPubBannerSize : values()) {
            f3565b.put(mobPubBannerSize.toUnderlyingValue(), mobPubBannerSize);
        }
    }

    MobPubBannerSize(Integer num) {
        this.f3566a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3566a;
    }

    public static MobPubBannerSize fromUnderlyingValue(Integer num) {
        return (MobPubBannerSize) f3565b.get(num);
    }
}
