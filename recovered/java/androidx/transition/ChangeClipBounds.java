package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class ChangeClipBounds extends Transition {
    public static final String[] I = {"android:clipBounds:clip"};

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return I;
    }

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static void m(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect clipBounds = ViewCompat.getClipBounds(view);
        transitionValues.values.put("android:clipBounds:clip", clipBounds);
        if (clipBounds == null) {
            transitionValues.values.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey("android:clipBounds:clip") || !transitionValues2.values.containsKey("android:clipBounds:clip")) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get("android:clipBounds:clip");
        Rect rect2 = (Rect) transitionValues2.values.get("android:clipBounds:clip");
        boolean z = rect2 == null;
        if (rect == null && rect2 == null) {
            return null;
        }
        if (rect == null) {
            rect = (Rect) transitionValues.values.get("android:clipBounds:bounds");
        } else if (rect2 == null) {
            rect2 = (Rect) transitionValues2.values.get("android:clipBounds:bounds");
        }
        if (rect.equals(rect2)) {
            return null;
        }
        ViewCompat.setClipBounds(transitionValues2.view, rect);
        Rect rect3 = new Rect();
        p pVar = new p();
        pVar.f2298a = rect3;
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(transitionValues2.view, (Property<View, V>) f0.c, pVar, rect, rect2);
        if (z) {
            objectAnimatorOfObject.addListener(new a(transitionValues2.view));
        }
        return objectAnimatorOfObject;
    }

    public class a extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f2225a;

        public a(View view) {
            this.f2225a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewCompat.setClipBounds(this.f2225a, null);
        }
    }
}
