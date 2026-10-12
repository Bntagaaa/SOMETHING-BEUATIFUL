package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    public static final String[] J = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property K;
    public static final Property L;
    public static final Property M;
    public static final Property N;
    public static final Property O;
    public static final p P;
    public boolean I;

    public static class k {

        /* renamed from: a, reason: collision with root package name */
        public int f2222a;

        /* renamed from: b, reason: collision with root package name */
        public int f2223b;
        public int c;
        public int d;
        public View e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f2224g;
    }

    static {
        new b(PointF.class, "boundsOrigin").f2216a = new Rect();
        K = new c(PointF.class, "topLeft");
        L = new d(PointF.class, "bottomRight");
        M = new e(PointF.class, "bottomRight");
        N = new f(PointF.class, "topLeft");
        O = new g(PointF.class, "position");
        P = new p();
    }

    public static class b extends Property<Drawable, PointF> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f2216a;

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            Rect rect = this.f2216a;
            drawable.copyBounds(rect);
            rect.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(rect);
        }

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2216a);
            return new PointF(r0.left, r0.top);
        }
    }

    public static class c extends Property<k, PointF> {
        @Override // android.util.Property
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(k kVar, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            kVar.getClass();
            kVar.f2222a = Math.round(pointF.x);
            int iRound = Math.round(pointF.y);
            kVar.f2223b = iRound;
            int i = kVar.f + 1;
            kVar.f = i;
            if (i == kVar.f2224g) {
                f0.a(kVar.e, kVar.f2222a, iRound, kVar.c, kVar.d);
                kVar.f = 0;
                kVar.f2224g = 0;
            }
        }
    }

    public static class d extends Property<k, PointF> {
        @Override // android.util.Property
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(k kVar, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            kVar.getClass();
            kVar.c = Math.round(pointF.x);
            int iRound = Math.round(pointF.y);
            kVar.d = iRound;
            int i = kVar.f2224g + 1;
            kVar.f2224g = i;
            if (kVar.f == i) {
                f0.a(kVar.e, kVar.f2222a, kVar.f2223b, kVar.c, iRound);
                kVar.f = 0;
                kVar.f2224g = 0;
            }
        }
    }

    public static class e extends Property<View, PointF> {
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            f0.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    public static class f extends Property<View, PointF> {
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            f0.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    public static class g extends Property<View, PointF> {
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            f0.a(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    public ChangeBounds() {
        this.I = false;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.d);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        typedArrayObtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return J;
    }

    public void setResizeClip(boolean z) {
        this.I = z;
    }

    public boolean getResizeClip() {
        return this.I;
    }

    public final void m(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put("android:changeBounds:parent", transitionValues.view.getParent());
        if (this.I) {
            transitionValues.values.put("android:changeBounds:clip", ViewCompat.getClipBounds(view));
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
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2;
        Rect rect;
        Animator animatorOfObject;
        int i3;
        Rect rect2;
        Animator animatorOfObject2;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = transitionValues2.view;
        Rect rect3 = (Rect) transitionValues.values.get("android:changeBounds:bounds");
        Rect rect4 = (Rect) transitionValues2.values.get("android:changeBounds:bounds");
        int i4 = rect3.left;
        int i5 = rect4.left;
        int i6 = rect3.top;
        int i7 = rect4.top;
        int i8 = rect3.right;
        int i9 = rect4.right;
        int i10 = rect3.bottom;
        int i11 = rect4.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect5 = (Rect) transitionValues.values.get("android:changeBounds:clip");
        Rect rect6 = (Rect) transitionValues2.values.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect5 != null && !rect5.equals(rect6)) || (rect5 == null && rect6 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        boolean z = this.I;
        Property property = O;
        if (z) {
            f0.a(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            if (i4 == i5 && i6 == i7) {
                rect = rect6;
                animatorOfObject = null;
            } else {
                rect = rect6;
                animatorOfObject = ObjectAnimator.ofObject(view, (Property<View, V>) property, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            }
            if (rect5 == null) {
                i3 = 0;
                rect2 = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect2 = rect5;
            }
            Rect rect7 = rect == null ? new Rect(i3, i3, i14, i15) : rect;
            if (rect2.equals(rect7)) {
                animatorOfObject2 = null;
            } else {
                ViewCompat.setClipBounds(view, rect2);
                p pVar = P;
                Object[] objArr = new Object[2];
                objArr[i3] = rect2;
                objArr[1] = rect7;
                animatorOfObject2 = ObjectAnimator.ofObject(view, "clipBounds", pVar, objArr);
                animatorOfObject2.addListener(new i(view, rect, i5, i7, i9, i11));
            }
            boolean z2 = t.f2304a;
            if (animatorOfObject == null) {
                animatorOfObject = animatorOfObject2;
            } else if (animatorOfObject2 != null) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(animatorOfObject, animatorOfObject2);
                animatorOfObject = animatorSet;
            }
        } else {
            f0.a(view, i4, i6, i8, i10);
            if (i2 != 2) {
                animatorOfObject = (i4 == i5 && i6 == i7) ? ObjectAnimator.ofObject(view, (Property<View, V>) M, (TypeConverter) null, getPathMotion().getPath(i8, i10, i9, i11)) : ObjectAnimator.ofObject(view, (Property<View, V>) N, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                animatorOfObject = ObjectAnimator.ofObject(view, (Property<View, V>) property, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            } else {
                k kVar = new k();
                kVar.e = view;
                Animator animatorOfObject3 = ObjectAnimator.ofObject(kVar, (Property<k, V>) K, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
                Animator animatorOfObject4 = ObjectAnimator.ofObject(kVar, (Property<k, V>) L, (TypeConverter) null, getPathMotion().getPath(i8, i10, i9, i11));
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(animatorOfObject3, animatorOfObject4);
                animatorSet2.addListener(new h(kVar));
                animatorOfObject = animatorSet2;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            z.a(viewGroup4, true);
            addListener(new j(viewGroup4));
        }
        return animatorOfObject;
    }

    public class h extends AnimatorListenerAdapter {
        private k mViewBounds;

        public h(k kVar) {
            this.mViewBounds = kVar;
        }
    }

    public class i extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2217a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2218b;
        public final /* synthetic */ Rect c;
        public final /* synthetic */ int d;
        public final /* synthetic */ int e;
        public final /* synthetic */ int f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f2219g;

        public i(View view, Rect rect, int i, int i2, int i3, int i4) {
            this.f2218b = view;
            this.c = rect;
            this.d = i;
            this.e = i2;
            this.f = i3;
            this.f2219g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2217a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (this.f2217a) {
                return;
            }
            View view = this.f2218b;
            ViewCompat.setClipBounds(view, this.c);
            f0.a(view, this.d, this.e, this.f, this.f2219g);
        }
    }

    public class j extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2220a = false;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2221b;

        public j(ViewGroup viewGroup) {
            this.f2221b = viewGroup;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            z.a(this.f2221b, false);
            this.f2220a = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            if (!this.f2220a) {
                z.a(this.f2221b, false);
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            z.a(this.f2221b, false);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            z.a(this.f2221b, true);
        }
    }

    public class a extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h0 h0Var = f0.f2280a;
            throw null;
        }
    }
}
