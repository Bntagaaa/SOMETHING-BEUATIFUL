package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.collection.ArrayMap;

/* loaded from: classes.dex */
class s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayMap f2302a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Transition f2303b;

    public s(Transition transition, ArrayMap arrayMap) {
        this.f2303b = transition;
        this.f2302a = arrayMap;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2303b.w.add(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2302a.remove(animator);
        this.f2303b.w.remove(animator);
    }
}
