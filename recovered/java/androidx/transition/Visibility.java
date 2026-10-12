package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import androidx.transition.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class Visibility extends Transition {
    public static final String[] J = {"android:visibility:visibility", "android:visibility:parent"};
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    public int I;

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Mode {
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2270a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2271b;
        public int c;
        public int d;
        public ViewGroup e;
        public ViewGroup f;
    }

    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public class a extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2266a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2267b;
        public final /* synthetic */ View c;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            new x(this.f2266a).remove(this.f2267b);
        }

        public a(ViewGroup viewGroup, View view, View view2) {
            this.f2266a = viewGroup;
            this.f2267b = view;
            this.c = view2;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            View view = this.f2267b;
            if (view.getParent() == null) {
                new x(this.f2266a).add(view);
            } else {
                Visibility.this.cancel();
            }
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            this.c.setTag(R.id.save_overlay_view, null);
            new x(this.f2266a).remove(this.f2267b);
            transition.removeListener(this);
        }
    }

    public Visibility() {
        this.I = 3;
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.e);
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (namedInt != 0) {
            setMode(namedInt);
        }
    }

    public void setMode(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.I = i;
    }

    public int getMode() {
        return this.I;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return J;
    }

    public static void m(TransitionValues transitionValues) {
        transitionValues.values.put("android:visibility:visibility", Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put("android:visibility:parent", transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:visibility:screenLocation", iArr);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    public boolean isVisible(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get("android:visibility:visibility")).intValue() == 0 && ((View) transitionValues.values.get("android:visibility:parent")) != null;
    }

    public static c n(TransitionValues transitionValues, TransitionValues transitionValues2) {
        c cVar = new c();
        cVar.f2270a = false;
        cVar.f2271b = false;
        if (transitionValues != null && transitionValues.values.containsKey("android:visibility:visibility")) {
            cVar.c = ((Integer) transitionValues.values.get("android:visibility:visibility")).intValue();
            cVar.e = (ViewGroup) transitionValues.values.get("android:visibility:parent");
        } else {
            cVar.c = -1;
            cVar.e = null;
        }
        if (transitionValues2 != null && transitionValues2.values.containsKey("android:visibility:visibility")) {
            cVar.d = ((Integer) transitionValues2.values.get("android:visibility:visibility")).intValue();
            cVar.f = (ViewGroup) transitionValues2.values.get("android:visibility:parent");
        } else {
            cVar.d = -1;
            cVar.f = null;
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i = cVar.c;
            int i2 = cVar.d;
            if (i != i2 || cVar.e != cVar.f) {
                if (i != i2) {
                    if (i == 0) {
                        cVar.f2271b = false;
                        cVar.f2270a = true;
                        return cVar;
                    }
                    if (i2 == 0) {
                        cVar.f2271b = true;
                        cVar.f2270a = true;
                        return cVar;
                    }
                } else {
                    if (cVar.f == null) {
                        cVar.f2271b = false;
                        cVar.f2270a = true;
                        return cVar;
                    }
                    if (cVar.e == null) {
                        cVar.f2271b = true;
                        cVar.f2270a = true;
                        return cVar;
                    }
                }
            }
        } else {
            if (transitionValues == null && cVar.d == 0) {
                cVar.f2271b = true;
                cVar.f2270a = true;
                return cVar;
            }
            if (transitionValues2 == null && cVar.c == 0) {
                cVar.f2271b = false;
                cVar.f2270a = true;
            }
        }
        return cVar;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        c cVarN = n(transitionValues, transitionValues2);
        if (!cVarN.f2270a) {
            return null;
        }
        if (cVarN.e == null && cVarN.f == null) {
            return null;
        }
        if (cVarN.f2271b) {
            return onAppear(viewGroup, transitionValues, cVarN.c, transitionValues2, cVarN.d);
        }
        return onDisappear(viewGroup, transitionValues, cVarN.c, transitionValues2, cVarN.d);
    }

    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        if ((this.I & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (n(g(view, false), getTransitionValues(view, false)).f2270a) {
                return null;
            }
        }
        return onAppear(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator onDisappear(android.view.ViewGroup r24, androidx.transition.TransitionValues r25, int r26, androidx.transition.TransitionValues r27, int r28) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.onDisappear(android.view.ViewGroup, androidx.transition.TransitionValues, int, androidx.transition.TransitionValues, int):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey("android:visibility:visibility") != transitionValues.values.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarN = n(transitionValues, transitionValues2);
        if (cVarN.f2270a) {
            return cVarN.c == 0 || cVarN.d == 0;
        }
        return false;
    }

    public static class b extends AnimatorListenerAdapter implements Transition.TransitionListener, a.InterfaceC0035a {

        /* renamed from: a, reason: collision with root package name */
        public final View f2268a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2269b;
        public final ViewGroup c;
        public boolean e;
        public boolean f = false;
        public final boolean d = true;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        public b(int i, View view) {
            this.f2268a = view;
            this.f2269b = i;
            this.c = (ViewGroup) view.getParent();
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            if (this.f) {
                return;
            }
            f0.c(this.f2268a, this.f2269b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            if (this.f) {
                return;
            }
            f0.c(this.f2268a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            a(false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            if (!this.f) {
                f0.c(this.f2268a, this.f2269b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
            if (!this.f) {
                f0.c(this.f2268a, this.f2269b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
            transition.removeListener(this);
        }

        public final void a(boolean z) {
            ViewGroup viewGroup;
            if (!this.d || this.e == z || (viewGroup = this.c) == null) {
                return;
            }
            this.e = z;
            z.a(viewGroup, z);
        }
    }
}
