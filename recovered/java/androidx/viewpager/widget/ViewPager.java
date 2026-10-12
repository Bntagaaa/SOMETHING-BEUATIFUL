package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    public static final int[] g0 = {R.attr.layout_gravity};
    public static final Comparator h0 = new a();
    public static final Interpolator i0 = new b();
    public static final g j0 = new g();
    public int A;
    public int B;
    public float C;
    public float D;
    public float E;
    public float F;
    public int G;
    public VelocityTracker H;
    public int I;
    public int J;
    public int K;
    public int L;
    public boolean M;
    public long N;
    public EdgeEffect O;
    public EdgeEffect P;
    public boolean Q;
    public boolean R;
    public int S;
    public ArrayList T;
    public OnPageChangeListener U;
    public OnPageChangeListener V;
    public ArrayList W;

    /* renamed from: a, reason: collision with root package name */
    public int f2365a;
    public PageTransformer a0;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2366b;
    public int b0;
    public final d c;
    public int c0;
    public final Rect d;
    public ArrayList d0;
    public PagerAdapter e;
    public final Runnable e0;
    public int f;
    public int f0;

    /* renamed from: g, reason: collision with root package name */
    public int f2367g;
    public Parcelable h;
    public ClassLoader i;
    public Scroller j;
    public boolean k;
    public f l;
    public int m;
    public Drawable n;
    public int o;
    public int p;
    public float q;
    public float r;
    public int s;
    public boolean t;
    public boolean u;
    public boolean v;
    public int w;
    public boolean x;
    public boolean y;
    public int z;

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface DecorView {
    }

    public interface OnAdapterChangeListener {
        void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2);
    }

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, @Px int i2);

        void onPageSelected(int i);
    }

    public interface PageTransformer {
        void transformPage(@NonNull View view, float f);
    }

    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    }

    public static class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public Object f2372a;

        /* renamed from: b, reason: collision with root package name */
        public int f2373b;
        public boolean c;
        public float d;
        public float e;
    }

    public static class a implements Comparator<d> {
        @Override // java.util.Comparator
        public int compare(d dVar, d dVar2) {
            return dVar.f2373b - dVar2.f2373b;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            ViewPager viewPager = ViewPager.this;
            viewPager.v(0);
            viewPager.p();
        }
    }

    public ViewPager(@NonNull Context context) {
        super(context);
        this.f2366b = new ArrayList();
        this.c = new d();
        this.d = new Rect();
        this.f2367g = -1;
        this.h = null;
        this.i = null;
        this.q = -3.4028235E38f;
        this.r = Float.MAX_VALUE;
        this.w = 1;
        this.G = -1;
        this.Q = true;
        this.e0 = new c();
        this.f0 = 0;
        k();
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2366b = new ArrayList();
        this.c = new d();
        this.d = new Rect();
        this.f2367g = -1;
        this.h = null;
        this.i = null;
        this.q = -3.4028235E38f;
        this.r = Float.MAX_VALUE;
        this.w = 1;
        this.G = -1;
        this.Q = true;
        this.e0 = new c();
        this.f0 = 0;
        k();
    }

    public final void k() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.j = new Scroller(context, i0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.B = viewConfiguration.getScaledPagingTouchSlop();
        this.I = (int) (400.0f * f2);
        this.J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.O = new EdgeEffect(context);
        this.P = new EdgeEffect(context);
        this.K = (int) (25.0f * f2);
        this.L = (int) (2.0f * f2);
        this.z = (int) (f2 * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new e());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new androidx.viewpager.widget.a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.e0);
        Scroller scroller = this.j;
        if (scroller != null && !scroller.isFinished()) {
            this.j.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    public final void v(int i) {
        if (this.f0 == i) {
            return;
        }
        this.f0 = i;
        if (this.a0 != null) {
            boolean z = i != 0;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setLayerType(z ? this.b0 : 0, null);
            }
        }
        OnPageChangeListener onPageChangeListener = this.U;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        ArrayList arrayList = this.T;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.T.get(i3);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrollStateChanged(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.V;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrollStateChanged(i);
        }
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) throws Resources.NotFoundException {
        ArrayList arrayList;
        PagerAdapter pagerAdapter2 = this.e;
        if (pagerAdapter2 != null) {
            pagerAdapter2.setViewPagerObserver(null);
            this.e.startUpdate((ViewGroup) this);
            int i = 0;
            while (true) {
                arrayList = this.f2366b;
                if (i >= arrayList.size()) {
                    break;
                }
                d dVar = (d) arrayList.get(i);
                this.e.destroyItem((ViewGroup) this, dVar.f2373b, dVar.f2372a);
                i++;
            }
            this.e.finishUpdate((ViewGroup) this);
            arrayList.clear();
            int i2 = 0;
            while (i2 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).isDecor) {
                    removeViewAt(i2);
                    i2--;
                }
                i2++;
            }
            this.f = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.e;
        this.e = pagerAdapter;
        this.f2365a = 0;
        if (pagerAdapter != null) {
            if (this.l == null) {
                this.l = new f();
            }
            this.e.setViewPagerObserver(this.l);
            this.v = false;
            boolean z = this.Q;
            this.Q = true;
            this.f2365a = this.e.getCount();
            if (this.f2367g >= 0) {
                this.e.restoreState(this.h, this.i);
                u(this.f2367g, 0, false, true);
                this.f2367g = -1;
                this.h = null;
                this.i = null;
            } else if (!z) {
                p();
            } else {
                requestLayout();
            }
        }
        ArrayList arrayList2 = this.W;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.W.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((OnAdapterChangeListener) this.W.get(i3)).onAdapterChanged(this, pagerAdapter3, pagerAdapter);
        }
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.e;
    }

    public void addOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        if (this.W == null) {
            this.W = new ArrayList();
        }
        this.W.add(onAdapterChangeListener);
    }

    public void removeOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        ArrayList arrayList = this.W;
        if (arrayList != null) {
            arrayList.remove(onAdapterChangeListener);
        }
    }

    public final int g() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) throws Resources.NotFoundException {
        this.v = false;
        u(i, 0, !this.Q, false);
    }

    public void setCurrentItem(int i, boolean z) throws Resources.NotFoundException {
        this.v = false;
        u(i, 0, z, false);
    }

    public int getCurrentItem() {
        return this.f;
    }

    public final void u(int i, int i2, boolean z, boolean z2) throws Resources.NotFoundException {
        PagerAdapter pagerAdapter = this.e;
        if (pagerAdapter == null || pagerAdapter.getCount() <= 0) {
            w(false);
            return;
        }
        ArrayList arrayList = this.f2366b;
        if (!z2 && this.f == i && arrayList.size() != 0) {
            w(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.e.getCount()) {
            i = this.e.getCount() - 1;
        }
        int i3 = this.w;
        int i4 = this.f;
        if (i > i4 + i3 || i < i4 - i3) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                ((d) arrayList.get(i5)).c = true;
            }
        }
        boolean z3 = this.f != i;
        if (this.Q) {
            this.f = i;
            if (z3) {
                e(i);
            }
            requestLayout();
            return;
        }
        q(i);
        t(i, i2, z, z3);
    }

    public final void t(int i, int i2, boolean z, boolean z2) throws Resources.NotFoundException {
        int scrollX;
        int iAbs;
        d dVarJ = j(i);
        int iMax = dVarJ != null ? (int) (Math.max(this.q, Math.min(dVarJ.e, this.r)) * g()) : 0;
        if (!z) {
            if (z2) {
                e(i);
            }
            b(false);
            scrollTo(iMax, 0);
            n(iMax);
            return;
        }
        if (getChildCount() == 0) {
            w(false);
        } else {
            Scroller scroller = this.j;
            if (scroller != null && !scroller.isFinished()) {
                scrollX = this.k ? this.j.getCurrX() : this.j.getStartX();
                this.j.abortAnimation();
                w(false);
            } else {
                scrollX = getScrollX();
            }
            int i3 = scrollX;
            int scrollY = getScrollY();
            int i4 = iMax - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                b(false);
                p();
                v(0);
            } else {
                w(true);
                v(2);
                int iG = g();
                int i6 = iG / 2;
                float f2 = iG;
                float f3 = i6;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i4) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
                int iAbs2 = Math.abs(i2);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    iAbs = (int) (((Math.abs(i4) / ((this.e.getPageWidth(this.f) * f2) + this.m)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.k = false;
                this.j.startScroll(i3, scrollY, i4, i5, iMin);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
        if (z2) {
            e(i);
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.U = onPageChangeListener;
    }

    public void addOnPageChangeListener(@NonNull OnPageChangeListener onPageChangeListener) {
        if (this.T == null) {
            this.T = new ArrayList();
        }
        this.T.add(onPageChangeListener);
    }

    public void removeOnPageChangeListener(@NonNull OnPageChangeListener onPageChangeListener) {
        ArrayList arrayList = this.T;
        if (arrayList != null) {
            arrayList.remove(onPageChangeListener);
        }
    }

    public void clearOnPageChangeListeners() {
        ArrayList arrayList = this.T;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer) throws Resources.NotFoundException {
        setPageTransformer(z, pageTransformer, 2);
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer, int i) throws Resources.NotFoundException {
        boolean z2 = pageTransformer != null;
        boolean z3 = z2 != (this.a0 != null);
        this.a0 = pageTransformer;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.c0 = z ? 2 : 1;
            this.b0 = i;
        } else {
            this.c0 = 0;
        }
        if (z3) {
            p();
        }
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        if (this.c0 == 2) {
            i2 = (i - 1) - i2;
        }
        return ((LayoutParams) ((View) this.d0.get(i2)).getLayoutParams()).d;
    }

    public int getOffscreenPageLimit() {
        return this.w;
    }

    public void setOffscreenPageLimit(int i) throws Resources.NotFoundException {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.w) {
            this.w = i;
            p();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.m;
        this.m = i;
        int width = getWidth();
        r(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.m;
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.n = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.n;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.n;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final d a(int i, int i2) {
        d dVar = new d();
        dVar.f2373b = i;
        dVar.f2372a = this.e.instantiateItem((ViewGroup) this, i);
        dVar.d = this.e.getPageWidth(i);
        ArrayList arrayList = this.f2366b;
        if (i2 < 0 || i2 >= arrayList.size()) {
            arrayList.add(dVar);
            return dVar;
        }
        arrayList.add(i2, dVar);
        return dVar;
    }

    public final void c() throws Resources.NotFoundException {
        int count = this.e.getCount();
        this.f2365a = count;
        ArrayList arrayList = this.f2366b;
        boolean z = arrayList.size() < (this.w * 2) + 1 && arrayList.size() < count;
        int iMax = this.f;
        int i = 0;
        boolean z2 = false;
        while (i < arrayList.size()) {
            d dVar = (d) arrayList.get(i);
            int itemPosition = this.e.getItemPosition(dVar.f2372a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    arrayList.remove(i);
                    i--;
                    if (!z2) {
                        this.e.startUpdate((ViewGroup) this);
                        z2 = true;
                    }
                    this.e.destroyItem((ViewGroup) this, dVar.f2373b, dVar.f2372a);
                    int i2 = this.f;
                    if (i2 == dVar.f2373b) {
                        iMax = Math.max(0, Math.min(i2, count - 1));
                    }
                } else {
                    int i3 = dVar.f2373b;
                    if (i3 != itemPosition) {
                        if (i3 == this.f) {
                            iMax = itemPosition;
                        }
                        dVar.f2373b = itemPosition;
                    }
                }
                z = true;
            }
            i++;
        }
        if (z2) {
            this.e.finishUpdate((ViewGroup) this);
        }
        Collections.sort(arrayList, h0);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.f2368a = 0.0f;
                }
            }
            u(iMax, 0, false, true);
            requestLayout();
        }
    }

    public final void p() throws Resources.NotFoundException {
        q(this.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c7 A[PHI: r7 r11 r15
      0x00c7: PHI (r7v13 int) = (r7v12 int), (r7v4 int), (r7v16 int) binds: [B:64:0x00eb, B:61:0x00d7, B:52:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r11v26 int) = (r11v1 int), (r11v25 int), (r11v29 int) binds: [B:64:0x00eb, B:61:0x00d7, B:52:0x00be] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r15v6 float) = (r15v4 float), (r15v5 float), (r15v3 float) binds: [B:64:0x00eb, B:61:0x00d7, B:52:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0148 A[PHI: r3 r12
      0x0148: PHI (r3v42 float) = (r3v40 float), (r3v41 float), (r3v39 float) binds: [B:98:0x016f, B:95:0x0159, B:88:0x013f] A[DONT_GENERATE, DONT_INLINE]
      0x0148: PHI (r12v10 int) = (r12v8 int), (r12v9 int), (r12v7 int) binds: [B:98:0x016f, B:95:0x0159, B:88:0x013f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(int r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.q(int):void");
    }

    public final void x() {
        if (this.c0 != 0) {
            ArrayList arrayList = this.d0;
            if (arrayList == null) {
                this.d0 = new ArrayList();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.d0.add(getChildAt(i));
            }
            Collections.sort(this.d0, j0);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public int f2370b;
        public Parcelable c;
        public final ClassLoader d;

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2370b);
            parcel.writeParcelable(this.c, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f2370b + "}";
        }

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f2370b = parcel.readInt();
            this.c = parcel.readParcelable(classLoader);
            this.d = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2370b = this.f;
        PagerAdapter pagerAdapter = this.e;
        if (pagerAdapter != null) {
            savedState.c = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        PagerAdapter pagerAdapter = this.e;
        ClassLoader classLoader = savedState.d;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.c, classLoader);
            u(savedState.f2370b, 0, false, true);
        } else {
            this.f2367g = savedState.f2370b;
            this.h = savedState.c;
            this.i = classLoader;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z = layoutParams2.isDecor | (view.getClass().getAnnotation(DecorView.class) != null);
        layoutParams2.isDecor = z;
        if (!this.t) {
            super.addView(view, i, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.f2369b = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final d h(View view) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f2366b;
            if (i >= arrayList.size()) {
                return null;
            }
            d dVar = (d) arrayList.get(i);
            if (this.e.isViewFromObject(view, dVar.f2372a)) {
                return dVar;
            }
            i++;
        }
    }

    public final d j(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f2366b;
            if (i2 >= arrayList.size()) {
                return null;
            }
            d dVar = (d) arrayList.get(i2);
            if (dVar.f2373b == i) {
                return dVar;
            }
            i2++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Q = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.m;
            r(i, i3, i5, i5);
        }
    }

    public final void r(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.f2366b.isEmpty()) {
            if (!this.j.isFinished()) {
                this.j.setFinalX(g() * getCurrentItem());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        d dVarJ = j(this.f);
        int iMin = (int) ((dVarJ != null ? Math.min(dVarJ.e, this.r) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            b(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void computeScroll() {
        this.k = true;
        if (!this.j.isFinished() && this.j.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.j.getCurrX();
            int currY = this.j.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!n(currX)) {
                    this.j.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        b(true);
    }

    public final boolean n(int i) {
        if (this.f2366b.size() == 0) {
            if (!this.Q) {
                this.R = false;
                onPageScrolled(0, 0.0f, 0);
                if (!this.R) {
                    throw new IllegalStateException("onPageScrolled did not call superclass implementation");
                }
            }
            return false;
        }
        d dVarI = i();
        int iG = g();
        int i2 = this.m;
        int i3 = iG + i2;
        float f2 = iG;
        int i4 = dVarI.f2373b;
        float f3 = ((i / f2) - dVarI.e) / (dVarI.d + (i2 / f2));
        this.R = false;
        onPageScrolled(i4, f3, (int) (i3 * f3));
        if (this.R) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPageScrolled(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.S
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6c
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L1b:
            if (r7 >= r6) goto L6c
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r9 = (androidx.viewpager.widget.ViewPager.LayoutParams) r9
            boolean r10 = r9.isDecor
            if (r10 != 0) goto L2c
            goto L69
        L2c:
            int r9 = r9.gravity
            r9 = r9 & 7
            if (r9 == r2) goto L50
            r10 = 3
            if (r9 == r10) goto L4a
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5d
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
        L46:
            r11 = r9
            r9 = r3
            r3 = r11
            goto L5d
        L4a:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5d
        L50:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
            goto L46
        L5d:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L68
            r8.offsetLeftAndRight(r3)
        L68:
            r3 = r9
        L69:
            int r7 = r7 + 1
            goto L1b
        L6c:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r0 = r12.U
            if (r0 == 0) goto L73
            r0.onPageScrolled(r13, r14, r15)
        L73:
            java.util.ArrayList r0 = r12.T
            if (r0 == 0) goto L8e
            int r0 = r0.size()
            r3 = 0
        L7c:
            if (r3 >= r0) goto L8e
            java.util.ArrayList r4 = r12.T
            java.lang.Object r4 = r4.get(r3)
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r4 = (androidx.viewpager.widget.ViewPager.OnPageChangeListener) r4
            if (r4 == 0) goto L8b
            r4.onPageScrolled(r13, r14, r15)
        L8b:
            int r3 = r3 + 1
            goto L7c
        L8e:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r0 = r12.V
            if (r0 == 0) goto L95
            r0.onPageScrolled(r13, r14, r15)
        L95:
            androidx.viewpager.widget.ViewPager$PageTransformer r13 = r12.a0
            if (r13 == 0) goto Lc6
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        La1:
            if (r1 >= r14) goto Lc6
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r0 = (androidx.viewpager.widget.ViewPager.LayoutParams) r0
            boolean r0 = r0.isDecor
            if (r0 == 0) goto Lb2
            goto Lc3
        Lb2:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.g()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$PageTransformer r3 = r12.a0
            r3.transformPage(r15, r0)
        Lc3:
            int r1 = r1 + 1
            goto La1
        Lc6:
            r12.R = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onPageScrolled(int, float, int):void");
    }

    public final void e(int i) {
        OnPageChangeListener onPageChangeListener = this.U;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
        ArrayList arrayList = this.T;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.T.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageSelected(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.V;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageSelected(i);
        }
    }

    public final void b(boolean z) {
        boolean z2 = this.f0 == 2;
        if (z2) {
            w(false);
            if (!this.j.isFinished()) {
                this.j.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.j.getCurrX();
                int currY = this.j.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        n(currX);
                    }
                }
            }
        }
        this.v = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f2366b;
            if (i >= arrayList.size()) {
                break;
            }
            d dVar = (d) arrayList.get(i);
            if (dVar.c) {
                dVar.c = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            Runnable runnable = this.e0;
            if (z) {
                ViewCompat.postOnAnimation(this, runnable);
            } else {
                runnable.run();
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            s();
            return false;
        }
        if (action != 0) {
            if (this.x) {
                return true;
            }
            if (this.y) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.E = x;
            this.C = x;
            float y = motionEvent.getY();
            this.F = y;
            this.D = y;
            this.G = motionEvent.getPointerId(0);
            this.y = false;
            this.k = true;
            this.j.computeScrollOffset();
            if (this.f0 == 2 && Math.abs(this.j.getFinalX() - this.j.getCurrX()) > this.L) {
                this.j.abortAnimation();
                this.v = false;
                p();
                this.x = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                v(1);
            } else {
                b(false);
                this.x = false;
            }
        } else if (action == 2) {
            int i = this.G;
            if (i != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f2 = x2 - this.C;
                float fAbs = Math.abs(f2);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.F);
                if (f2 != 0.0f) {
                    float f3 = this.C;
                    if ((f3 >= this.A || f2 <= 0.0f) && ((f3 <= getWidth() - this.A || f2 >= 0.0f) && canScroll(this, false, (int) f2, (int) x2, (int) y2))) {
                        this.C = x2;
                        this.D = y2;
                        this.y = true;
                        return false;
                    }
                }
                float f4 = this.B;
                if (fAbs > f4 && fAbs * 0.5f > fAbs2) {
                    this.x = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    v(1);
                    float f5 = this.E;
                    float f6 = this.B;
                    this.C = f2 > 0.0f ? f5 + f6 : f5 - f6;
                    this.D = y2;
                    w(true);
                } else if (fAbs2 > f4) {
                    this.y = true;
                }
                if (this.x && o(x2)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        } else if (action == 6) {
            l(motionEvent);
        }
        if (this.H == null) {
            this.H = VelocityTracker.obtain();
        }
        this.H.addMovement(motionEvent);
        return this.x;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final boolean s() {
        this.G = -1;
        this.x = false;
        this.y = false;
        VelocityTracker velocityTracker = this.H;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.H = null;
        }
        this.O.onRelease();
        this.P.onRelease();
        return this.O.isFinished() || this.P.isFinished();
    }

    public final boolean o(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.C - f2;
        this.C = f2;
        float scrollX = getScrollX() + f3;
        float fG = g();
        float f4 = this.q * fG;
        float f5 = this.r * fG;
        ArrayList arrayList = this.f2366b;
        boolean z3 = false;
        d dVar = (d) arrayList.get(0);
        d dVar2 = (d) arrayList.get(arrayList.size() - 1);
        if (dVar.f2373b != 0) {
            f4 = dVar.e * fG;
            z = false;
        } else {
            z = true;
        }
        if (dVar2.f2373b != this.e.getCount() - 1) {
            f5 = dVar2.e * fG;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.O.onPull(Math.abs(f4 - scrollX) / fG);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.P.onPull(Math.abs(scrollX - f5) / fG);
                z3 = true;
            }
            scrollX = f5;
        }
        int i = (int) scrollX;
        this.C = (scrollX - i) + this.C;
        scrollTo(i, getScrollY());
        n(i);
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.viewpager.widget.ViewPager.d i() {
        /*
            r13 = this;
            int r0 = r13.g()
            r1 = 0
            if (r0 <= 0) goto Lf
            int r2 = r13.getScrollX()
            float r2 = (float) r2
            float r3 = (float) r0
            float r2 = r2 / r3
            goto L10
        Lf:
            r2 = 0
        L10:
            if (r0 <= 0) goto L18
            int r3 = r13.m
            float r3 = (float) r3
            float r0 = (float) r0
            float r3 = r3 / r0
            goto L19
        L18:
            r3 = 0
        L19:
            r0 = 0
            r4 = -1
            r5 = 1
            r6 = 0
            r7 = r6
            r4 = 0
            r6 = -1
            r8 = 0
            r9 = 1
        L22:
            java.util.ArrayList r10 = r13.f2366b
            int r11 = r10.size()
            if (r8 >= r11) goto L71
            java.lang.Object r11 = r10.get(r8)
            androidx.viewpager.widget.ViewPager$d r11 = (androidx.viewpager.widget.ViewPager.d) r11
            if (r9 != 0) goto L4b
            int r12 = r11.f2373b
            int r6 = r6 + r5
            if (r12 == r6) goto L4b
            float r1 = r1 + r4
            float r1 = r1 + r3
            androidx.viewpager.widget.ViewPager$d r4 = r13.c
            r4.e = r1
            r4.f2373b = r6
            androidx.viewpager.widget.PagerAdapter r1 = r13.e
            float r1 = r1.getPageWidth(r6)
            r4.d = r1
            int r8 = r8 + (-1)
            r6 = r4
            goto L4c
        L4b:
            r6 = r11
        L4c:
            float r1 = r6.e
            float r4 = r6.d
            float r4 = r4 + r1
            float r4 = r4 + r3
            if (r9 != 0) goto L58
            int r9 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r9 < 0) goto L71
        L58:
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L70
            int r4 = r10.size()
            int r4 = r4 - r5
            if (r8 != r4) goto L64
            goto L70
        L64:
            int r4 = r6.f2373b
            float r7 = r6.d
            int r8 = r8 + 1
            r9 = r6
            r6 = r4
            r4 = r7
            r7 = r9
            r9 = 0
            goto L22
        L70:
            return r6
        L71:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.i():androidx.viewpager.widget.ViewPager$d");
    }

    public final int d(int i, int i2, float f2, int i3) {
        if (Math.abs(i3) <= this.K || Math.abs(i2) <= this.I) {
            i += (int) (f2 + (i >= this.f ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        ArrayList arrayList = this.f2366b;
        if (arrayList.size() > 0) {
            return Math.max(((d) arrayList.get(0)).f2373b, Math.min(i, ((d) arrayList.get(arrayList.size() - 1)).f2373b));
        }
        return i;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.e) != null && pagerAdapter.getCount() > 1)) {
            if (!this.O.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.q * width);
                this.O.setSize(height, width);
                zDraw = this.O.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.P.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.r + 1.0f)) * width2);
                this.P.setSize(height2, width2);
                zDraw |= this.P.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.O.finish();
            this.P.finish();
        }
        if (zDraw) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        float f2;
        ArrayList arrayList;
        int i2;
        super.onDraw(canvas);
        if (this.m <= 0 || this.n == null) {
            return;
        }
        ArrayList arrayList2 = this.f2366b;
        if (arrayList2.size() <= 0 || this.e == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f3 = this.m / width;
        int i3 = 0;
        d dVar = (d) arrayList2.get(0);
        float f4 = dVar.e;
        int size = arrayList2.size();
        int i4 = dVar.f2373b;
        int i5 = ((d) arrayList2.get(size - 1)).f2373b;
        while (i4 < i5) {
            while (true) {
                i = dVar.f2373b;
                if (i4 <= i || i3 >= size) {
                    break;
                }
                i3++;
                dVar = (d) arrayList2.get(i3);
            }
            if (i4 == i) {
                float f5 = dVar.e;
                float f6 = dVar.d;
                f2 = (f5 + f6) * width;
                f4 = f5 + f6 + f3;
            } else {
                float pageWidth = this.e.getPageWidth(i4);
                f2 = (f4 + pageWidth) * width;
                f4 = pageWidth + f3 + f4;
            }
            if (this.m + f2 > scrollX) {
                arrayList = arrayList2;
                i2 = scrollX;
                this.n.setBounds(Math.round(f2), this.o, Math.round(this.m + f2), this.p);
                this.n.draw(canvas);
            } else {
                arrayList = arrayList2;
                i2 = scrollX;
            }
            if (f2 > i2 + r3) {
                return;
            }
            i4++;
            arrayList2 = arrayList;
            scrollX = i2;
        }
    }

    public boolean beginFakeDrag() {
        if (this.x) {
            return false;
        }
        this.M = true;
        v(1);
        this.C = 0.0f;
        this.E = 0.0f;
        VelocityTracker velocityTracker = this.H;
        if (velocityTracker == null) {
            this.H = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0);
        this.H.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        this.N = jUptimeMillis;
        return true;
    }

    public void endFakeDrag() throws Resources.NotFoundException {
        if (!this.M) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.e != null) {
            VelocityTracker velocityTracker = this.H;
            velocityTracker.computeCurrentVelocity(1000, this.J);
            int xVelocity = (int) velocityTracker.getXVelocity(this.G);
            this.v = true;
            int iG = g();
            int scrollX = getScrollX();
            d dVarI = i();
            u(d(dVarI.f2373b, xVelocity, ((scrollX / iG) - dVarI.e) / dVarI.d, (int) (this.C - this.E)), xVelocity, true, true);
        }
        this.x = false;
        this.y = false;
        VelocityTracker velocityTracker2 = this.H;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.H = null;
        }
        this.M = false;
    }

    public void fakeDragBy(float f2) {
        if (!this.M) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.e == null) {
            return;
        }
        this.C += f2;
        float scrollX = getScrollX() - f2;
        float fG = g();
        float f3 = this.q * fG;
        float f4 = this.r * fG;
        ArrayList arrayList = this.f2366b;
        d dVar = (d) arrayList.get(0);
        d dVar2 = (d) arrayList.get(arrayList.size() - 1);
        if (dVar.f2373b != 0) {
            f3 = dVar.e * fG;
        }
        if (dVar2.f2373b != this.e.getCount() - 1) {
            f4 = dVar2.e * fG;
        }
        if (scrollX < f3) {
            scrollX = f3;
        } else if (scrollX > f4) {
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.C = (scrollX - i) + this.C;
        scrollTo(i, getScrollY());
        n(i);
        MotionEvent motionEventObtain = MotionEvent.obtain(this.N, SystemClock.uptimeMillis(), 2, this.C, 0.0f, 0);
        this.H.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }

    public boolean isFakeDragging() {
        return this.M;
    }

    public final void l(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.G) {
            int i = actionIndex == 0 ? 1 : 0;
            this.C = motionEvent.getX(i);
            this.G = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.H;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final void w(boolean z) {
        if (this.u != z) {
            this.u = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.e == null) {
            return false;
        }
        int iG = g();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) iG) * this.q)) : i > 0 && scrollX < ((int) (((float) iG) * this.r));
    }

    public boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) throws Resources.NotFoundException {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (!keyEvent.hasModifiers(2)) {
                    return arrowScroll(17);
                }
                int i = this.f;
                if (i <= 0) {
                    return false;
                }
                setCurrentItem(i - 1, true);
                return true;
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return m();
                }
                return arrowScroll(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    public boolean arrowScroll(int i) throws Resources.NotFoundException {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            for (ViewParent parent = viewFindFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                if (parent == this) {
                    break;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(viewFindFocus.getClass().getSimpleName());
            for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                sb.append(" => ");
                sb.append(parent2.getClass().getSimpleName());
            }
            Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        boolean zM = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.d;
            if (i == 17) {
                int i2 = f(viewFindNextFocus, rect).left;
                int i3 = f(viewFindFocus, rect).left;
                if (viewFindFocus == null || i2 < i3) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                    zM = zRequestFocus;
                } else {
                    int i4 = this.f;
                    if (i4 > 0) {
                        setCurrentItem(i4 - 1, true);
                        zM = true;
                    }
                }
            } else if (i == 66) {
                int i5 = f(viewFindNextFocus, rect).left;
                int i6 = f(viewFindFocus, rect).left;
                if (viewFindFocus != null && i5 <= i6) {
                    zRequestFocus = m();
                } else {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                }
                zM = zRequestFocus;
            }
        } else if (i == 17 || i == 1) {
            int i7 = this.f;
            if (i7 > 0) {
                setCurrentItem(i7 - 1, true);
                zM = true;
            }
        } else if (i == 66 || i == 2) {
            zM = m();
        }
        if (zM) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return zM;
    }

    public final Rect f(View view, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public final boolean m() throws Resources.NotFoundException {
        PagerAdapter pagerAdapter = this.e;
        if (pagerAdapter == null || this.f >= pagerAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.f + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        d dVarH;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (dVarH = h(childAt)) != null && dVarH.f2373b == this.f) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        d dVarH;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (dVarH = h(childAt)) != null && dVarH.f2373b == this.f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        d dVarH;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (dVarH = h(childAt)) != null && dVarH.f2373b == this.f && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        d dVarH;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (dVarH = h(childAt)) != null && dVarH.f2373b == this.f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public class e extends AccessibilityDelegateCompat {
        public e() {
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onInitializeAccessibilityEvent(android.view.View r3, android.view.accessibility.AccessibilityEvent r4) {
            /*
                r2 = this;
                super.onInitializeAccessibilityEvent(r3, r4)
                java.lang.Class<androidx.viewpager.widget.ViewPager> r3 = androidx.viewpager.widget.ViewPager.class
                java.lang.String r3 = r3.getName()
                r4.setClassName(r3)
                androidx.viewpager.widget.ViewPager r3 = androidx.viewpager.widget.ViewPager.this
                androidx.viewpager.widget.PagerAdapter r0 = r3.e
                if (r0 == 0) goto L1a
                int r0 = r0.getCount()
                r1 = 1
                if (r0 <= r1) goto L1a
                goto L1b
            L1a:
                r1 = 0
            L1b:
                r4.setScrollable(r1)
                int r0 = r4.getEventType()
                r1 = 4096(0x1000, float:5.74E-42)
                if (r0 != r1) goto L3b
                androidx.viewpager.widget.PagerAdapter r0 = r3.e
                if (r0 == 0) goto L3b
                int r0 = r0.getCount()
                r4.setItemCount(r0)
                int r0 = r3.f
                r4.setFromIndex(r0)
                int r3 = r3.f
                r4.setToIndex(r3)
            L3b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.e.onInitializeAccessibilityEvent(android.view.View, android.view.accessibility.AccessibilityEvent):void");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            PagerAdapter pagerAdapter = viewPager.e;
            accessibilityNodeInfoCompat.setScrollable(pagerAdapter != null && pagerAdapter.getCount() > 1);
            if (viewPager.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (viewPager.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) throws Resources.NotFoundException {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            ViewPager viewPager = ViewPager.this;
            if (i == 4096) {
                if (!viewPager.canScrollHorizontally(1)) {
                    return false;
                }
                viewPager.setCurrentItem(viewPager.f + 1);
                return true;
            }
            if (i != 8192 || !viewPager.canScrollHorizontally(-1)) {
                return false;
            }
            viewPager.setCurrentItem(viewPager.f - 1);
            return true;
        }
    }

    public class f extends DataSetObserver {
        public f() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            ViewPager.this.c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            ViewPager.this.c();
        }
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public float f2368a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2369b;
        public int c;
        public int d;
        public int gravity;
        public boolean isDecor;

        public LayoutParams() {
            super(-1, -1);
            this.f2368a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2368a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.g0);
            this.gravity = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class g implements Comparator<View> {
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.isDecor;
            if (z != layoutParams2.isDecor) {
                return z ? 1 : -1;
            }
            return layoutParams.c - layoutParams2.c;
        }
    }
}
