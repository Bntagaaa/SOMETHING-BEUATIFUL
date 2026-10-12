package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
abstract class c implements o {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3024a;

    /* renamed from: b, reason: collision with root package name */
    public final ExtendedFloatingActionButton f3025b;
    public final ArrayList c = new ArrayList();
    public final a d;
    public MotionSpec e;
    public MotionSpec f;

    public c(ExtendedFloatingActionButton extendedFloatingActionButton, a aVar) {
        this.f3025b = extendedFloatingActionButton;
        this.f3024a = extendedFloatingActionButton.getContext();
        this.d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.o
    public final void setMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f = motionSpec;
    }

    public final MotionSpec getCurrentMotionSpec() {
        MotionSpec motionSpec = this.f;
        if (motionSpec != null) {
            return motionSpec;
        }
        if (this.e == null) {
            this.e = MotionSpec.createFromResource(this.f3024a, getDefaultMotionSpecResource());
        }
        return (MotionSpec) Preconditions.checkNotNull(this.e);
    }

    @Override // com.google.android.material.floatingactionbutton.o
    public final void addAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.o
    public final void removeAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.o
    @NonNull
    public final List<Animator.AnimatorListener> getListeners() {
        return this.c;
    }

    @Override // com.google.android.material.floatingactionbutton.o
    @Nullable
    public MotionSpec getMotionSpec() {
        return this.f;
    }

    @Override // com.google.android.material.floatingactionbutton.o
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.d.onNextAnimationStart(animator);
    }

    @Override // com.google.android.material.floatingactionbutton.o
    @CallSuper
    public void onAnimationEnd() {
        this.d.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.o
    @CallSuper
    public void onAnimationCancel() {
        this.d.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.o
    public AnimatorSet createAnimator() {
        return a(getCurrentMotionSpec());
    }

    public final AnimatorSet a(MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        boolean zHasPropertyValues = motionSpec.hasPropertyValues("opacity");
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f3025b;
        if (zHasPropertyValues) {
            arrayList.add(motionSpec.getAnimator("opacity", extendedFloatingActionButton, View.ALPHA));
        }
        if (motionSpec.hasPropertyValues("scale")) {
            arrayList.add(motionSpec.getAnimator("scale", extendedFloatingActionButton, View.SCALE_Y));
            arrayList.add(motionSpec.getAnimator("scale", extendedFloatingActionButton, View.SCALE_X));
        }
        if (motionSpec.hasPropertyValues("width")) {
            arrayList.add(motionSpec.getAnimator("width", extendedFloatingActionButton, ExtendedFloatingActionButton.G));
        }
        if (motionSpec.hasPropertyValues("height")) {
            arrayList.add(motionSpec.getAnimator("height", extendedFloatingActionButton, ExtendedFloatingActionButton.H));
        }
        if (motionSpec.hasPropertyValues("paddingStart")) {
            arrayList.add(motionSpec.getAnimator("paddingStart", extendedFloatingActionButton, ExtendedFloatingActionButton.I));
        }
        if (motionSpec.hasPropertyValues("paddingEnd")) {
            arrayList.add(motionSpec.getAnimator("paddingEnd", extendedFloatingActionButton, ExtendedFloatingActionButton.J));
        }
        if (motionSpec.hasPropertyValues("labelOpacity")) {
            arrayList.add(motionSpec.getAnimator("labelOpacity", extendedFloatingActionButton, new b(this)));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }
}
