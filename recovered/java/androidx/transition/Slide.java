package androidx.transition;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class Slide extends Visibility {
    public static final DecelerateInterpolator M = new DecelerateInterpolator();
    public static final AccelerateInterpolator N = new AccelerateInterpolator();
    public static final a O = new a();
    public static final b P = new b();
    public static final c Q = new c();
    public static final d R = new d();
    public static final e S = new e();
    public static final f T = new f();
    public g K;
    public int L;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface GravityFlag {
    }

    public interface g {
        float getGoneX(ViewGroup viewGroup, View view);

        float getGoneY(ViewGroup viewGroup, View view);
    }

    public static abstract class h implements g {
        private h() {
        }

        public /* synthetic */ h(int i) {
            this();
        }

        @Override // androidx.transition.Slide.g
        public float getGoneY(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    public static abstract class i implements g {
        private i() {
        }

        public /* synthetic */ i(int i) {
            this();
        }

        @Override // androidx.transition.Slide.g
        public float getGoneX(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public static class a extends h {
        public a() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneX(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    }

    public static class b extends h {
        public b() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneX(ViewGroup viewGroup, View view) {
            if (ViewCompat.getLayoutDirection(viewGroup) == 1) {
                return view.getTranslationX() + viewGroup.getWidth();
            }
            return view.getTranslationX() - viewGroup.getWidth();
        }
    }

    public static class c extends i {
        public c() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneY(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    }

    public static class d extends h {
        public d() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneX(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    }

    public static class e extends h {
        public e() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneX(ViewGroup viewGroup, View view) {
            if (ViewCompat.getLayoutDirection(viewGroup) == 1) {
                return view.getTranslationX() - viewGroup.getWidth();
            }
            return view.getTranslationX() + viewGroup.getWidth();
        }
    }

    public static class f extends i {
        public f() {
            super(0);
        }

        @Override // androidx.transition.Slide.g
        public float getGoneY(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    }

    public Slide() {
        this.K = T;
        this.L = 80;
        setSlideEdge(80);
    }

    public Slide(int i2) {
        this.K = T;
        this.L = 80;
        setSlideEdge(i2);
    }

    @SuppressLint({"RestrictedApi"})
    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.K = T;
        this.L = 80;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.h);
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        typedArrayObtainStyledAttributes.recycle();
        setSlideEdge(namedInt);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:slide:screenPosition", iArr);
    }

    public void setSlideEdge(int i2) {
        if (i2 == 3) {
            this.K = O;
        } else if (i2 == 5) {
            this.K = R;
        } else if (i2 == 48) {
            this.K = Q;
        } else if (i2 == 80) {
            this.K = T;
        } else if (i2 == 8388611) {
            this.K = P;
        } else if (i2 == 8388613) {
            this.K = S;
        } else {
            throw new IllegalArgumentException("Invalid slide direction");
        }
        this.L = i2;
        SidePropagation sidePropagation = new SidePropagation();
        sidePropagation.setSide(i2);
        setPropagation(sidePropagation);
    }

    public int getSlideEdge() {
        return this.L;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return v.a(view, transitionValues2, iArr[0], iArr[1], this.K.getGoneX(viewGroup, view), this.K.getGoneY(viewGroup, view), translationX, translationY, M, this);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:slide:screenPosition");
        return v.a(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.K.getGoneX(viewGroup, view), this.K.getGoneY(viewGroup, view), N, this);
    }
}
