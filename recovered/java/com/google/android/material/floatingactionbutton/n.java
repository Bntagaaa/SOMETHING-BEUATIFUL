package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.RequiresApi;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;

@RequiresApi(21)
/* loaded from: classes.dex */
class n extends m {

    public static class a extends MaterialShapeDrawable {
        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public final void k() {
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public final void h(ColorStateList colorStateList) {
        Drawable drawable = this.c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        } else {
            super.h(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public final void f(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        FloatingActionButton floatingActionButton = this.v;
        if (i == 21) {
            floatingActionButton.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(m.D, m(f, f3));
            stateListAnimator.addState(m.E, m(f, f2));
            stateListAnimator.addState(m.F, m(f, f2));
            stateListAnimator.addState(m.G, m(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(m.C);
            stateListAnimator.addState(m.H, animatorSet);
            stateListAnimator.addState(m.I, m(0.0f, 0.0f));
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (j()) {
            l();
        }
    }

    public final AnimatorSet m(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = {f};
        FloatingActionButton floatingActionButton = this.v;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", fArr).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(m.C);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public float getElevation() {
        return this.v.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public final boolean j() {
        if (this.w.isCompatPaddingEnabled()) {
            return true;
        }
        if (!this.f) {
            return false;
        }
        FloatingActionButton floatingActionButton = this.v;
        return floatingActionButton.c(floatingActionButton.f3016g) < this.k;
    }

    @Override // com.google.android.material.floatingactionbutton.m
    public final void e(Rect rect) {
        if (this.w.isCompatPaddingEnabled()) {
            super.e(rect);
            return;
        }
        if (this.f) {
            FloatingActionButton floatingActionButton = this.v;
            int iC = floatingActionButton.c(floatingActionButton.f3016g);
            int i = this.k;
            if (iC < i) {
                int iC2 = (i - floatingActionButton.c(floatingActionButton.f3016g)) / 2;
                rect.set(iC2, iC2, iC2, iC2);
                return;
            }
        }
        rect.set(0, 0, 0, 0);
    }
}
