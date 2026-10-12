package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.R;
import androidx.viewpager2.adapter.StatefulAdapter;
import androidx.viewpager2.widget.f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {
    public static final int OFFSCREEN_PAGE_LIMIT_DEFAULT = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    /* renamed from: a, reason: collision with root package name */
    public final Rect f2397a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2398b;
    public final androidx.viewpager2.widget.c c;
    public int d;
    public boolean e;
    public final RecyclerView.AdapterDataObserver f;

    /* renamed from: g, reason: collision with root package name */
    public LinearLayoutManager f2399g;
    public int h;
    public Parcelable i;
    public RecyclerView j;
    public PagerSnapHelper k;
    public androidx.viewpager2.widget.f l;
    public androidx.viewpager2.widget.c m;
    public androidx.viewpager2.widget.d n;
    public androidx.viewpager2.widget.e o;
    public RecyclerView.ItemAnimator p;
    public boolean q;
    public boolean r;
    public int s;
    public f t;

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface OffscreenPageLimit {
    }

    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, @Px int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Orientation {
    }

    public interface PageTransformer {
        void transformPage(@NonNull View view, float f);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ScrollState {
    }

    public abstract class b {
    }

    public class c extends b {
    }

    public void unregisterOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.c.f2412a.remove(onPageChangeCallback);
    }

    public class a extends d {
        public a() {
            super(0);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.d, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.e = true;
            viewPager2.l.l = true;
        }
    }

    public ViewPager2(@NonNull Context context) throws IllegalStateException {
        super(context);
        this.f2397a = new Rect();
        this.f2398b = new Rect();
        this.c = new androidx.viewpager2.widget.c();
        this.e = false;
        this.f = new a();
        this.h = -1;
        this.p = null;
        this.q = false;
        this.r = true;
        this.s = -1;
        b(context, null);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) throws IllegalStateException {
        super(context, attributeSet);
        this.f2397a = new Rect();
        this.f2398b = new Rect();
        this.c = new androidx.viewpager2.widget.c();
        this.e = false;
        this.f = new a();
        this.h = -1;
        this.p = null;
        this.q = false;
        this.r = true;
        this.s = -1;
        b(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) throws IllegalStateException {
        super(context, attributeSet, i2);
        this.f2397a = new Rect();
        this.f2398b = new Rect();
        this.c = new androidx.viewpager2.widget.c();
        this.e = false;
        this.f = new a();
        this.h = -1;
        this.p = null;
        this.q = false;
        this.r = true;
        this.s = -1;
        b(context, attributeSet);
    }

    @RequiresApi(21)
    @SuppressLint({"ClassVerificationFailure"})
    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) throws IllegalStateException {
        super(context, attributeSet, i2, i3);
        this.f2397a = new Rect();
        this.f2398b = new Rect();
        this.c = new androidx.viewpager2.widget.c();
        this.e = false;
        this.f = new a();
        this.h = -1;
        this.p = null;
        this.q = false;
        this.r = true;
        this.s = -1;
        b(context, attributeSet);
    }

    public final void b(Context context, AttributeSet attributeSet) throws IllegalStateException {
        this.t = new f();
        h hVar = new h(context);
        this.j = hVar;
        hVar.setId(ViewCompat.generateViewId());
        this.j.setDescendantFocusability(131072);
        e eVar = new e(context);
        this.f2399g = eVar;
        this.j.setLayoutManager(eVar);
        this.j.setScrollingTouchSlop(1);
        int[] iArr = R.styleable.ViewPager2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(R.styleable.ViewPager2_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.j.addOnChildAttachStateChangeListener(new androidx.viewpager2.widget.i());
            androidx.viewpager2.widget.f fVar = new androidx.viewpager2.widget.f(this);
            this.l = fVar;
            this.n = new androidx.viewpager2.widget.d(this, fVar, this.j);
            g gVar = new g();
            this.k = gVar;
            gVar.attachToRecyclerView(this.j);
            this.j.addOnScrollListener(this.l);
            androidx.viewpager2.widget.c cVar = new androidx.viewpager2.widget.c();
            this.m = cVar;
            this.l.f2418a = cVar;
            androidx.viewpager2.widget.g gVar2 = new androidx.viewpager2.widget.g(this);
            androidx.viewpager2.widget.h hVar2 = new androidx.viewpager2.widget.h(this);
            this.m.f2412a.add(gVar2);
            this.m.f2412a.add(hVar2);
            this.t.onInitialize(this.m, this.j);
            androidx.viewpager2.widget.c cVar2 = this.m;
            cVar2.f2412a.add(this.c);
            androidx.viewpager2.widget.e eVar2 = new androidx.viewpager2.widget.e(this.f2399g);
            this.o = eVar2;
            this.m.f2412a.add(eVar2);
            RecyclerView recyclerView = this.j;
            attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(23)
    public CharSequence getAccessibilityClassName() {
        if (this.t.handlesGetAccessibilityClassName()) {
            return this.t.onGetAccessibilityClassName();
        }
        return super.getAccessibilityClassName();
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        i iVar = new i(super.onSaveInstanceState());
        iVar.f2407a = this.j.getId();
        int i2 = this.h;
        if (i2 == -1) {
            i2 = this.d;
        }
        iVar.f2408b = i2;
        Parcelable parcelable = this.i;
        if (parcelable != null) {
            iVar.c = parcelable;
            return iVar;
        }
        Object adapter = this.j.getAdapter();
        if (adapter instanceof StatefulAdapter) {
            iVar.c = ((StatefulAdapter) adapter).saveState();
        }
        return iVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.getSuperState());
        this.h = iVar.f2408b;
        this.i = iVar.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        RecyclerView.Adapter adapter;
        if (this.h == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.i;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.i = null;
        }
        int iMax = Math.max(0, Math.min(this.h, adapter.getItemCount() - 1));
        this.d = iMax;
        this.h = -1;
        this.j.scrollToPosition(iMax);
        this.t.onRestorePendingState();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof i) {
            int i2 = ((i) parcelable).f2407a;
            sparseArray.put(this.j.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        c();
    }

    public static class i extends View.BaseSavedState {
        public static final Parcelable.Creator<i> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public int f2407a;

        /* renamed from: b, reason: collision with root package name */
        public int f2408b;
        public Parcelable c;

        public i(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2407a = parcel.readInt();
            this.f2408b = parcel.readInt();
            this.c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2407a);
            parcel.writeInt(this.f2408b);
            parcel.writeParcelable(this.c, i);
        }

        public class a implements Parcelable.ClassLoaderCreator<i> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public i createFromParcel(Parcel parcel, ClassLoader classLoader) {
                if (Build.VERSION.SDK_INT < 24) {
                    i iVar = new i(parcel);
                    iVar.f2407a = parcel.readInt();
                    iVar.f2408b = parcel.readInt();
                    iVar.c = parcel.readParcelable(null);
                    return iVar;
                }
                return new i(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public i createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            public i[] newArray(int i) {
                return new i[i];
            }
        }
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter<?> adapter2 = this.j.getAdapter();
        this.t.onDetachAdapter(adapter2);
        RecyclerView.AdapterDataObserver adapterDataObserver = this.f;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(adapterDataObserver);
        }
        this.j.setAdapter(adapter);
        this.d = 0;
        c();
        this.t.onAttachAdapter(adapter);
        if (adapter != null) {
            adapter.registerAdapterDataObserver(adapterDataObserver);
        }
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.j.getAdapter();
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        measureChild(this.j, i2, i3);
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        int measuredState = this.j.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f2397a;
        rect.left = paddingLeft;
        rect.right = (i4 - i2) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i5 - i3) - getPaddingBottom();
        Rect rect2 = this.f2398b;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.j.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.e) {
            e();
        }
    }

    public final void e() {
        PagerSnapHelper pagerSnapHelper = this.k;
        if (pagerSnapHelper == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewFindSnapView = pagerSnapHelper.findSnapView(this.f2399g);
        if (viewFindSnapView == null) {
            return;
        }
        int position = this.f2399g.getPosition(viewFindSnapView);
        if (position != this.d && getScrollState() == 0) {
            this.m.onPageSelected(position);
        }
        this.e = false;
    }

    public final int a() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.j;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public void setOrientation(int i2) {
        this.f2399g.setOrientation(i2);
        this.t.onSetOrientation();
    }

    public int getOrientation() {
        return this.f2399g.getOrientation() == 1 ? 1 : 0;
    }

    public void setCurrentItem(int i2) {
        setCurrentItem(i2, true);
    }

    public void setCurrentItem(int i2, boolean z) {
        if (isFakeDragging()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        d(i2, z);
    }

    public final void d(int i2, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.h != -1) {
                this.h = Math.max(i2, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
        int i3 = this.d;
        if (iMin == i3 && this.l.f == 0) {
            return;
        }
        if (iMin == i3 && z) {
            return;
        }
        double d2 = i3;
        this.d = iMin;
        this.t.onSetNewCurrentItem();
        androidx.viewpager2.widget.f fVar = this.l;
        if (fVar.f != 0) {
            fVar.e();
            f.a aVar = fVar.f2420g;
            d2 = aVar.f2421a + aVar.f2422b;
        }
        androidx.viewpager2.widget.f fVar2 = this.l;
        fVar2.getClass();
        fVar2.e = z ? 2 : 3;
        fVar2.m = false;
        boolean z2 = fVar2.i != iMin;
        fVar2.i = iMin;
        fVar2.b(2);
        if (z2) {
            fVar2.a(iMin);
        }
        if (!z) {
            this.j.scrollToPosition(iMin);
            return;
        }
        double d3 = iMin;
        if (Math.abs(d3 - d2) > 3.0d) {
            this.j.scrollToPosition(d3 > d2 ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.j;
            recyclerView.post(new j(recyclerView, iMin));
            return;
        }
        this.j.smoothScrollToPosition(iMin);
    }

    public int getCurrentItem() {
        return this.d;
    }

    public int getScrollState() {
        return this.l.f;
    }

    public boolean beginFakeDrag() {
        androidx.viewpager2.widget.d dVar = this.n;
        androidx.viewpager2.widget.f fVar = dVar.f2414b;
        if (fVar.f == 1) {
            return false;
        }
        dVar.f2415g = 0;
        dVar.f = 0;
        dVar.h = SystemClock.uptimeMillis();
        VelocityTracker velocityTracker = dVar.d;
        if (velocityTracker == null) {
            dVar.d = VelocityTracker.obtain();
            dVar.e = ViewConfiguration.get(dVar.f2413a.getContext()).getScaledMaximumFlingVelocity();
        } else {
            velocityTracker.clear();
        }
        fVar.e = 4;
        fVar.d(true);
        if (fVar.f != 0) {
            dVar.c.stopScroll();
        }
        long j2 = dVar.h;
        MotionEvent motionEventObtain = MotionEvent.obtain(j2, j2, 0, 0.0f, 0.0f, 0);
        dVar.d.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    public boolean fakeDragBy(@Px @SuppressLint({"SupportAnnotationUsage"}) float f2) {
        androidx.viewpager2.widget.d dVar = this.n;
        if (!dVar.f2414b.m) {
            return false;
        }
        float f3 = dVar.f - f2;
        dVar.f = f3;
        int iRound = Math.round(f3 - dVar.f2415g);
        dVar.f2415g += iRound;
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z = dVar.f2413a.getOrientation() == 0;
        int i2 = z ? iRound : 0;
        int i3 = z ? 0 : iRound;
        float f4 = z ? dVar.f : 0.0f;
        float f5 = z ? 0.0f : dVar.f;
        dVar.c.scrollBy(i2, i3);
        MotionEvent motionEventObtain = MotionEvent.obtain(dVar.h, jUptimeMillis, 2, f4, f5, 0);
        dVar.d.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    public boolean endFakeDrag() {
        int[] iArrCalculateDistanceToFinalSnap;
        int i2;
        androidx.viewpager2.widget.d dVar = this.n;
        androidx.viewpager2.widget.f fVar = dVar.f2414b;
        boolean z = fVar.m;
        if (!z) {
            return false;
        }
        if (fVar.f != 1 || z) {
            fVar.m = false;
            fVar.e();
            f.a aVar = fVar.f2420g;
            if (aVar.c == 0) {
                int i3 = aVar.f2421a;
                if (i3 != fVar.h) {
                    fVar.a(i3);
                }
                fVar.b(0);
                fVar.c();
            } else {
                fVar.b(2);
            }
        }
        VelocityTracker velocityTracker = dVar.d;
        velocityTracker.computeCurrentVelocity(1000, dVar.e);
        if (!dVar.c.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            ViewPager2 viewPager2 = dVar.f2413a;
            View viewFindSnapView = viewPager2.k.findSnapView(viewPager2.f2399g);
            if (viewFindSnapView != null && ((i2 = (iArrCalculateDistanceToFinalSnap = viewPager2.k.calculateDistanceToFinalSnap(viewPager2.f2399g, viewFindSnapView))[0]) != 0 || iArrCalculateDistanceToFinalSnap[1] != 0)) {
                viewPager2.j.smoothScrollBy(i2, iArrCalculateDistanceToFinalSnap[1]);
            }
        }
        return true;
    }

    public boolean isFakeDragging() {
        return this.n.f2414b.m;
    }

    public void setUserInputEnabled(boolean z) {
        this.r = z;
        this.t.onSetUserInputEnabled();
    }

    public boolean isUserInputEnabled() {
        return this.r;
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.s = i2;
        this.j.requestLayout();
    }

    public int getOffscreenPageLimit() {
        return this.s;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return this.j.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.j.canScrollVertically(i2);
    }

    public void registerOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.c.f2412a.add(onPageChangeCallback);
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.q) {
                this.p = this.j.getItemAnimator();
                this.q = true;
            }
            this.j.setItemAnimator(null);
        } else if (this.q) {
            this.j.setItemAnimator(this.p);
            this.p = null;
            this.q = false;
        }
        androidx.viewpager2.widget.e eVar = this.o;
        if (pageTransformer == eVar.f2417b) {
            return;
        }
        eVar.f2417b = pageTransformer;
        requestTransform();
    }

    public void requestTransform() {
        if (this.o.f2417b == null) {
            return;
        }
        androidx.viewpager2.widget.f fVar = this.l;
        fVar.e();
        f.a aVar = fVar.f2420g;
        double d2 = aVar.f2421a + aVar.f2422b;
        int i2 = (int) d2;
        float f2 = (float) (d2 - i2);
        this.o.onPageScrolled(i2, f2, Math.round(a() * f2));
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.t.onSetLayoutDirection();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.t.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.View
    @RequiresApi(16)
    public boolean performAccessibilityAction(int i2, @Nullable Bundle bundle) {
        if (this.t.handlesPerformAccessibilityAction(i2, bundle)) {
            return this.t.onPerformAccessibilityAction(i2, bundle);
        }
        return super.performAccessibilityAction(i2, bundle);
    }

    public class h extends RecyclerView {
        public h(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi(23)
        public CharSequence getAccessibilityClassName() {
            ViewPager2.this.t.getClass();
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityEvent.setFromIndex(viewPager2.d);
            accessibilityEvent.setToIndex(viewPager2.d);
            viewPager2.t.onRvInitializeAccessibilityEvent(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }
    }

    public class e extends LinearLayoutManager {
        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            return false;
        }

        public e(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i, @Nullable Bundle bundle) {
            ViewPager2.this.t.getClass();
            return super.performAccessibilityAction(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.t.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfoForItem(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(viewPager2.getOrientation() == 1 ? viewPager2.f2399g.getPosition(view) : 0, 1, viewPager2.getOrientation() == 0 ? viewPager2.f2399g.getPosition(view) : 0, 1, false, false));
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            ViewPager2 viewPager2 = ViewPager2.this;
            int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(state, iArr);
                return;
            }
            int iA = viewPager2.a() * offscreenPageLimit;
            iArr[0] = iA;
            iArr[1] = iA;
        }
    }

    public class g extends PagerSnapHelper {
        public g() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (ViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    public static class j implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final int f2409a;

        /* renamed from: b, reason: collision with root package name */
        public final RecyclerView f2410b;

        public j(RecyclerView recyclerView, int i) {
            this.f2409a = i;
            this.f2410b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2410b.smoothScrollToPosition(this.f2409a);
        }
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.j.addItemDecoration(itemDecoration);
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i2) {
        this.j.addItemDecoration(itemDecoration, i2);
    }

    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int i2) {
        return this.j.getItemDecorationAt(i2);
    }

    public int getItemDecorationCount() {
        return this.j.getItemDecorationCount();
    }

    public void invalidateItemDecorations() {
        this.j.invalidateItemDecorations();
    }

    public void removeItemDecorationAt(int i2) {
        this.j.removeItemDecorationAt(i2);
    }

    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.j.removeItemDecoration(itemDecoration);
    }

    public class f extends b {

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityViewCommand f2401a = new a();

        /* renamed from: b, reason: collision with root package name */
        public final AccessibilityViewCommand f2402b = new b();
        public RecyclerView.AdapterDataObserver c;

        public boolean handlesGetAccessibilityClassName() {
            return true;
        }

        public boolean handlesPerformAccessibilityAction(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        public f() {
        }

        public class a implements AccessibilityViewCommand {
            public a() {
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.isUserInputEnabled()) {
                    viewPager2.d(currentItem, true);
                }
                return true;
            }
        }

        public class b implements AccessibilityViewCommand {
            public b() {
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                int currentItem = ((ViewPager2) view).getCurrentItem() - 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.isUserInputEnabled()) {
                    viewPager2.d(currentItem, true);
                }
                return true;
            }
        }

        public void onInitialize(@NonNull androidx.viewpager2.widget.c cVar, @NonNull RecyclerView recyclerView) {
            ViewCompat.setImportantForAccessibility(recyclerView, 2);
            this.c = new c();
            ViewPager2 viewPager2 = ViewPager2.this;
            if (ViewCompat.getImportantForAccessibility(viewPager2) == 0) {
                ViewCompat.setImportantForAccessibility(viewPager2, 1);
            }
        }

        public class c extends d {
            public c() {
                super(0);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.d, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                f.this.a();
            }
        }

        public String onGetAccessibilityClassName() {
            if (!handlesGetAccessibilityClassName()) {
                throw new IllegalStateException();
            }
            return "androidx.viewpager.widget.ViewPager";
        }

        public void onRestorePendingState() {
            a();
        }

        public void onAttachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
            a();
            if (adapter != null) {
                adapter.registerAdapterDataObserver(this.c);
            }
        }

        public void onDetachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.unregisterAdapterDataObserver(this.c);
            }
        }

        public void onSetOrientation() {
            a();
        }

        public void onSetNewCurrentItem() {
            a();
        }

        public void onSetUserInputEnabled() {
            a();
        }

        public void onSetLayoutDirection() {
            a();
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            int itemCount2;
            int itemCount3;
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getAdapter() == null) {
                itemCount = 0;
                itemCount2 = 0;
            } else if (viewPager2.getOrientation() == 1) {
                itemCount = viewPager2.getAdapter().getItemCount();
                itemCount2 = 1;
            } else {
                itemCount2 = viewPager2.getAdapter().getItemCount();
                itemCount = 1;
            }
            accessibilityNodeInfoCompatWrap.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(itemCount, itemCount2, false, 0));
            RecyclerView.Adapter adapter = viewPager2.getAdapter();
            if (adapter == null || (itemCount3 = adapter.getItemCount()) == 0 || !viewPager2.isUserInputEnabled()) {
                return;
            }
            if (viewPager2.d > 0) {
                accessibilityNodeInfoCompatWrap.addAction(8192);
            }
            if (viewPager2.d < itemCount3 - 1) {
                accessibilityNodeInfoCompatWrap.addAction(4096);
            }
            accessibilityNodeInfoCompatWrap.setScrollable(true);
        }

        public boolean onPerformAccessibilityAction(int i, Bundle bundle) {
            int currentItem;
            if (!handlesPerformAccessibilityAction(i, bundle)) {
                throw new IllegalStateException();
            }
            ViewPager2 viewPager2 = ViewPager2.this;
            if (i == 8192) {
                currentItem = viewPager2.getCurrentItem() - 1;
            } else {
                currentItem = viewPager2.getCurrentItem() + 1;
            }
            if (viewPager2.isUserInputEnabled()) {
                viewPager2.d(currentItem, true);
            }
            return true;
        }

        public void onRvInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(onGetAccessibilityClassName());
        }

        public final void a() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = android.R.id.accessibilityActionPageLeft;
            ViewCompat.removeAccessibilityAction(viewPager2, android.R.id.accessibilityActionPageLeft);
            ViewCompat.removeAccessibilityAction(viewPager2, android.R.id.accessibilityActionPageRight);
            ViewCompat.removeAccessibilityAction(viewPager2, android.R.id.accessibilityActionPageUp);
            ViewCompat.removeAccessibilityAction(viewPager2, android.R.id.accessibilityActionPageDown);
            if (viewPager2.getAdapter() == null || (itemCount = viewPager2.getAdapter().getItemCount()) == 0 || !viewPager2.isUserInputEnabled()) {
                return;
            }
            int orientation = viewPager2.getOrientation();
            AccessibilityViewCommand accessibilityViewCommand = this.f2402b;
            AccessibilityViewCommand accessibilityViewCommand2 = this.f2401a;
            if (orientation == 0) {
                boolean z = viewPager2.f2399g.getLayoutDirection() == 1;
                int i2 = z ? android.R.id.accessibilityActionPageLeft : android.R.id.accessibilityActionPageRight;
                if (z) {
                    i = android.R.id.accessibilityActionPageRight;
                }
                if (viewPager2.d < itemCount - 1) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, (CharSequence) null), null, accessibilityViewCommand2);
                }
                if (viewPager2.d > 0) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, (CharSequence) null), null, accessibilityViewCommand);
                    return;
                }
                return;
            }
            if (viewPager2.d < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageDown, (CharSequence) null), null, accessibilityViewCommand2);
            }
            if (viewPager2.d > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageUp, (CharSequence) null), null, accessibilityViewCommand);
            }
        }
    }

    public static abstract class d extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        private d() {
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }
    }
}
