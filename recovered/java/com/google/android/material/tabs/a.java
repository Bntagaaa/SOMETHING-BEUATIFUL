package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes.dex */
class a extends c {
    @Override // com.google.android.material.tabs.c
    public final void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float fSin;
        float fCos;
        RectF rectFA = c.a(tabLayout, view);
        RectF rectFA2 = c.a(tabLayout, view2);
        if (rectFA.left >= rectFA2.left) {
            double d = (f * 3.141592653589793d) / 2.0d;
            fSin = (float) Math.sin(d);
            fCos = (float) (1.0d - Math.cos(d));
        } else {
            double d2 = (f * 3.141592653589793d) / 2.0d;
            fSin = (float) (1.0d - Math.cos(d2));
            fCos = (float) Math.sin(d2);
        }
        drawable.setBounds(AnimationUtils.lerp((int) rectFA.left, (int) rectFA2.left, fSin), drawable.getBounds().top, AnimationUtils.lerp((int) rectFA.right, (int) rectFA2.right, fCos), drawable.getBounds().bottom);
    }
}
