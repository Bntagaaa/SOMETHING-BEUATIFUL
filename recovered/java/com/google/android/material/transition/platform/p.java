package com.google.android.material.transition.platform;

import android.graphics.drawable.Drawable;
import android.transition.Transition;
import android.view.Window;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class p extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Window f3482a;

    public p(Window window) {
        this.f3482a = window;
    }

    @Override // com.google.android.material.transition.platform.u, android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        Window window = this.f3482a;
        WeakReference weakReference = MaterialContainerTransformSharedElementCallback.f;
        Drawable background = window.getDecorView().getBackground();
        if (background == null) {
            return;
        }
        background.mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }
}
