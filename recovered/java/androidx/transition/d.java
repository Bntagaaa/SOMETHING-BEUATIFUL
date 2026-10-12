package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class d extends TransitionListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f2278a;

    public d(View view) {
        this.f2278a = view;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        View view = this.f2278a;
        f0.b(view, 1.0f);
        f0.f2280a.clearNonTransitionAlpha(view);
        transition.removeListener(this);
    }
}
