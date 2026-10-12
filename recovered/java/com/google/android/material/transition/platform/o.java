package com.google.android.material.transition.platform;

import android.app.Activity;
import android.transition.Transition;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class o extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f3481a;

    @Override // com.google.android.material.transition.platform.u, android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        View view;
        WeakReference weakReference = MaterialContainerTransformSharedElementCallback.f;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            view.setAlpha(1.0f);
            MaterialContainerTransformSharedElementCallback.f = null;
        }
        Activity activity = this.f3481a;
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    public o(Activity activity) {
        this.f3481a = activity;
    }
}
