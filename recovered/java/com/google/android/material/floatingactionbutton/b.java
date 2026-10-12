package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes.dex */
class b extends Property<ExtendedFloatingActionButton, Float> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f3023a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar) {
        super(Float.class, "LABEL_OPACITY_PROPERTY");
        this.f3023a = cVar;
    }

    @Override // android.util.Property
    public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
        return Float.valueOf(AnimationUtils.lerp(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), this.f3023a.f3025b.originalTextCsl.getDefaultColor()))));
    }

    @Override // android.util.Property
    public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
        int colorForState = extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), this.f3023a.f3025b.originalTextCsl.getDefaultColor());
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (AnimationUtils.lerp(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
        if (f.floatValue() == 1.0f) {
            extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.originalTextCsl);
        } else {
            extendedFloatingActionButton.silentlyUpdateTextColor(colorStateListValueOf);
        }
    }
}
