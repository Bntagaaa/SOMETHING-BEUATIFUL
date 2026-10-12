package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class Fade extends Visibility {
    public static final int IN = 1;
    public static final int OUT = 2;

    public Fade(int i) {
        setMode(i);
    }

    public Fade() {
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f);
        setMode(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, getMode()));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put("android:fade:transitionAlpha", Float.valueOf(f0.f2280a.getTransitionAlpha(transitionValues.view)));
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Float f;
        f0.f2280a.saveNonTransitionAlpha(view);
        return o(view, (transitionValues == null || (f = (Float) transitionValues.values.get("android:fade:transitionAlpha")) == null) ? 1.0f : f.floatValue(), 0.0f);
    }

    public final ObjectAnimator o(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        f0.b(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) f0.f2281b, f2);
        objectAnimatorOfFloat.addListener(new a(view));
        addListener(new d(view));
        return objectAnimatorOfFloat;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Float f;
        float fFloatValue = (transitionValues == null || (f = (Float) transitionValues.values.get("android:fade:transitionAlpha")) == null) ? 0.0f : f.floatValue();
        return o(view, fFloatValue != 1.0f ? fFloatValue : 0.0f, 1.0f);
    }

    public static class a extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final View f2235a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2236b = false;

        public a(View view) {
            this.f2235a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = this.f2235a;
            if (ViewCompat.hasOverlappingRendering(view) && view.getLayerType() == 0) {
                this.f2236b = true;
                view.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f2235a;
            f0.b(view, 1.0f);
            if (this.f2236b) {
                view.setLayerType(0, null);
            }
        }
    }
}
