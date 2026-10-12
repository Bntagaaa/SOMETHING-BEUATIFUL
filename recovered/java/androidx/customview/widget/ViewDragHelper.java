package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ViewDragHelper {
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final Interpolator x = new a();

    /* renamed from: a, reason: collision with root package name */
    public int f1459a;

    /* renamed from: b, reason: collision with root package name */
    public int f1460b;
    public float[] d;
    public float[] e;
    public float[] f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f1461g;
    public int[] h;
    public int[] i;
    public int[] j;
    public int k;
    public VelocityTracker l;
    public final float m;
    public float n;
    public int o;
    public final int p;
    public int q;
    public final OverScroller r;
    public final Callback s;
    public View t;
    public boolean u;
    public final ViewGroup v;
    public int c = -1;
    public final Runnable w = new b();

    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(@NonNull View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(@NonNull View view, int i, int i2, @Px int i3, @Px int i4) {
        }

        public void onViewReleased(@NonNull View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i);
    }

    public class a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.k(0);
        }
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper viewDragHelperCreate = create(viewGroup, callback);
        viewDragHelperCreate.f1460b = (int) ((1.0f / f) * viewDragHelperCreate.f1460b);
        return viewDragHelperCreate;
    }

    public ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.v = viewGroup;
        this.s = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.p = i;
        this.o = i;
        this.f1460b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.r = new OverScroller(context, x);
    }

    public void setMinVelocity(float f) {
        this.n = f;
    }

    public float getMinVelocity() {
        return this.n;
    }

    public int getViewDragState() {
        return this.f1459a;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.q = i;
    }

    @Px
    public int getEdgeSize() {
        return this.o;
    }

    public void setEdgeSize(@IntRange(from = 0) @Px int i) {
        this.o = i;
    }

    @Px
    public int getDefaultEdgeSize() {
        return this.p;
    }

    public void captureChildView(@NonNull View view, int i) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.v;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.t = view;
        this.c = i;
        this.s.onViewCaptured(view, i);
        k(1);
    }

    @Nullable
    public View getCapturedView() {
        return this.t;
    }

    public int getActivePointerId() {
        return this.c;
    }

    @Px
    public int getTouchSlop() {
        return this.f1460b;
    }

    public void cancel() {
        this.c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.f1461g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void abort() {
        cancel();
        if (this.f1459a == 2) {
            OverScroller overScroller = this.r;
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            overScroller.abortAnimation();
            int currX2 = overScroller.getCurrX();
            int currY2 = overScroller.getCurrY();
            this.s.onViewPositionChanged(this.t, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        k(0);
    }

    public boolean smoothSlideViewTo(@NonNull View view, int i, int i2) {
        this.t = view;
        this.c = -1;
        boolean zE = e(i, i2, 0, 0);
        if (!zE && this.f1459a == 0 && this.t != null) {
            this.t = null;
        }
        return zE;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (!this.u) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return e(i, i2, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c));
    }

    public final boolean e(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.t.getLeft();
        int top = this.t.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.r;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            k(0);
            return false;
        }
        View view = this.t;
        int i7 = (int) this.n;
        int i8 = (int) this.m;
        int iAbs = Math.abs(i3);
        if (iAbs < i7) {
            i3 = 0;
        } else if (iAbs > i8) {
            i3 = i3 > 0 ? i8 : -i8;
        }
        int i9 = (int) this.n;
        int iAbs2 = Math.abs(i4);
        if (iAbs2 < i9) {
            i4 = 0;
        } else if (iAbs2 > i8) {
            i4 = i4 > 0 ? i8 : -i8;
        }
        int iAbs3 = Math.abs(i5);
        int iAbs4 = Math.abs(i6);
        int iAbs5 = Math.abs(i3);
        int iAbs6 = Math.abs(i4);
        int i10 = iAbs5 + iAbs6;
        int i11 = iAbs3 + iAbs4;
        if (i3 != 0) {
            f = iAbs5;
            f2 = i10;
        } else {
            f = iAbs3;
            f2 = i11;
        }
        float f5 = f / f2;
        if (i4 != 0) {
            f3 = iAbs6;
            f4 = i10;
        } else {
            f3 = iAbs4;
            f4 = i11;
        }
        float f6 = f3 / f4;
        Callback callback = this.s;
        overScroller.startScroll(left, top, i5, i6, (int) ((d(i6, i4, callback.getViewVerticalDragRange(view)) * f6) + (d(i5, i3, callback.getViewHorizontalDragRange(view)) * f5)));
        k(2);
        return true;
    }

    public final int d(int i, int i2, int i3) {
        int iAbs;
        if (i == 0) {
            return 0;
        }
        float width = this.v.getWidth() / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int iAbs2 = Math.abs(i2);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(iAbs, 600);
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (!this.u) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.r.fling(this.t.getLeft(), this.t.getTop(), (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c), i, i3, i2, i4);
        k(2);
    }

    public boolean continueSettling(boolean z) {
        if (this.f1459a == 2) {
            OverScroller overScroller = this.r;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.t.getLeft();
            int top = currY - this.t.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.t, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.t, top);
            }
            if (left != 0 || top != 0) {
                this.s.onViewPositionChanged(this.t, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.v.post(this.w);
                } else {
                    k(0);
                }
            }
        }
        return this.f1459a == 2;
    }

    public final void c(int i) {
        if (this.d == null || !isPointerDown(i)) {
            return;
        }
        this.d[i] = 0.0f;
        this.e[i] = 0.0f;
        this.f[i] = 0.0f;
        this.f1461g[i] = 0.0f;
        this.h[i] = 0;
        this.i[i] = 0;
        this.j[i] = 0;
        this.k = (~(1 << i)) & this.k;
    }

    public final void i(float f, float f2, int i) {
        float[] fArr = this.d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f1461g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.f1461g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.e;
        this.f1461g[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.h;
        int i3 = (int) f;
        int i4 = (int) f2;
        ViewGroup viewGroup = this.v;
        int i5 = i3 < viewGroup.getLeft() + this.o ? 1 : 0;
        if (i4 < viewGroup.getTop() + this.o) {
            i5 |= 4;
        }
        if (i3 > viewGroup.getRight() - this.o) {
            i5 |= 2;
        }
        if (i4 > viewGroup.getBottom() - this.o) {
            i5 |= 8;
        }
        iArr7[i] = i5;
        this.k |= 1 << i;
    }

    public final void j(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (f(pointerId)) {
                float x2 = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x2;
                this.f1461g[pointerId] = y;
            }
        }
    }

    public boolean isPointerDown(int i) {
        return ((1 << i) & this.k) != 0;
    }

    public final void k(int i) {
        this.v.removeCallbacks(this.w);
        if (this.f1459a != i) {
            this.f1459a = i;
            this.s.onViewDragStateChanged(i);
            if (this.f1459a == 0) {
                this.t = null;
            }
        }
    }

    public final boolean l(int i, View view) {
        if (view == this.t && this.c == i) {
            return true;
        }
        if (view == null || !this.s.tryCaptureView(view, i)) {
            return false;
        }
        this.c = i;
        captureChildView(view, i);
        return true;
    }

    public boolean canScroll(@NonNull View view, boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z) {
            return view.canScrollHorizontally(-i) || view.canScrollVertically(-i2);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public void processTouchEvent(@NonNull MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i2 = 0;
        Callback callback = this.s;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewFindTopChildUnder = findTopChildUnder((int) x2, (int) y);
            i(x2, y, pointerId);
            l(pointerId, viewFindTopChildUnder);
            int i3 = this.h[pointerId] & this.q;
            if (i3 != 0) {
                callback.onEdgeTouched(i3, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f1459a == 1) {
                g();
            }
            cancel();
            return;
        }
        if (actionMasked == 2) {
            if (this.f1459a == 1) {
                if (f(this.c)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.c);
                    float x3 = motionEvent.getX(iFindPointerIndex);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f;
                    int i4 = this.c;
                    int i5 = (int) (x3 - fArr[i4]);
                    int i6 = (int) (y2 - this.f1461g[i4]);
                    int left = this.t.getLeft() + i5;
                    int top = this.t.getTop() + i6;
                    int left2 = this.t.getLeft();
                    int top2 = this.t.getTop();
                    if (i5 != 0) {
                        left = callback.clampViewPositionHorizontal(this.t, left, i5);
                        ViewCompat.offsetLeftAndRight(this.t, left - left2);
                    }
                    int i7 = left;
                    if (i6 != 0) {
                        top = callback.clampViewPositionVertical(this.t, top, i6);
                        ViewCompat.offsetTopAndBottom(this.t, top - top2);
                    }
                    int i8 = top;
                    if (i5 != 0 || i6 != 0) {
                        this.s.onViewPositionChanged(this.t, i7, i8, i7 - left2, i8 - top2);
                    }
                    j(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i2 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i2);
                if (f(pointerId2)) {
                    float x4 = motionEvent.getX(i2);
                    float y3 = motionEvent.getY(i2);
                    float f = x4 - this.d[pointerId2];
                    float f2 = y3 - this.e[pointerId2];
                    h(f, f2, pointerId2);
                    if (this.f1459a != 1) {
                        View viewFindTopChildUnder2 = findTopChildUnder((int) x4, (int) y3);
                        if (b(viewFindTopChildUnder2, f, f2) && l(pointerId2, viewFindTopChildUnder2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i2++;
            }
            j(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f1459a == 1) {
                this.u = true;
                callback.onViewReleased(this.t, 0.0f, 0.0f);
                this.u = false;
                if (this.f1459a == 1) {
                    k(0);
                }
            }
            cancel();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x5 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            i(x5, y4, pointerId3);
            if (this.f1459a == 0) {
                l(pointerId3, findTopChildUnder((int) x5, (int) y4));
                int i9 = this.h[pointerId3] & this.q;
                if (i9 != 0) {
                    callback.onEdgeTouched(i9, pointerId3);
                    return;
                }
                return;
            }
            if (isCapturedViewUnder((int) x5, (int) y4)) {
                l(pointerId3, this.t);
                return;
            }
            return;
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f1459a == 1 && pointerId4 == this.c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i2 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i2);
                if (pointerId5 != this.c) {
                    View viewFindTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                    View view = this.t;
                    if (viewFindTopChildUnder3 == view && l(pointerId5, view)) {
                        i = this.c;
                        break;
                    }
                }
                i2++;
            }
            if (i == -1) {
                g();
            }
        }
        c(pointerId4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    public final void h(float f, float f2, int i) {
        boolean zA = a(f, i, 1, f2);
        boolean z = zA;
        if (a(f2, i, 4, f)) {
            z = (zA ? 1 : 0) | 4;
        }
        boolean z2 = z;
        if (a(f, i, 2, f2)) {
            z2 = (z ? 1 : 0) | 2;
        }
        ?? r0 = z2;
        if (a(f2, i, 8, f)) {
            r0 = (z2 ? 1 : 0) | 8;
        }
        if (r0 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | r0;
            this.s.onEdgeDragStarted(r0, i);
        }
    }

    public final boolean a(float f, int i, int i2, float f2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) == i2 && (this.q & i2) != 0 && (this.j[i] & i2) != i2 && (this.i[i] & i2) != i2) {
            float f3 = this.f1460b;
            if (fAbs > f3 || fAbs2 > f3) {
                if (fAbs < fAbs2 * 0.5f && this.s.onEdgeLock(i2)) {
                    int[] iArr = this.j;
                    iArr[i] = i2 | iArr[i];
                    return false;
                }
                if ((this.i[i] & i2) == 0 && fAbs > this.f1460b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        Callback callback = this.s;
        boolean z = callback.getViewHorizontalDragRange(view) > 0;
        boolean z2 = callback.getViewVerticalDragRange(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f1460b) : z2 && Math.abs(f2) > ((float) this.f1460b);
        }
        float f3 = (f2 * f2) + (f * f);
        int i = this.f1460b;
        return f3 > ((float) (i * i));
    }

    public boolean checkTouchSlop(int i) {
        int length = this.d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f = this.f[i2] - this.d[i2];
        float f2 = this.f1461g[i2] - this.e[i2];
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f1460b) : z2 && Math.abs(f2) > ((float) this.f1460b);
        }
        float f3 = (f2 * f2) + (f * f);
        int i3 = this.f1460b;
        return f3 > ((float) (i3 * i3));
    }

    public boolean isEdgeTouched(int i) {
        int length = this.h.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (i & this.h[i2]) != 0;
    }

    public final void g() {
        VelocityTracker velocityTracker = this.l;
        float f = this.m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.l.getXVelocity(this.c);
        float f2 = this.n;
        float fAbs = Math.abs(xVelocity);
        if (fAbs < f2) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.l.getYVelocity(this.c);
        float f3 = this.n;
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f3) {
            f = 0.0f;
        } else if (fAbs2 <= f) {
            f = yVelocity;
        } else if (yVelocity <= 0.0f) {
            f = -f;
        }
        this.u = true;
        this.s.onViewReleased(this.t, xVelocity, f);
        this.u = false;
        if (this.f1459a == 1) {
            k(0);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.t, i, i2);
    }

    public boolean isViewUnder(@Nullable View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    @Nullable
    public View findTopChildUnder(int i, int i2) {
        ViewGroup viewGroup = this.v;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(this.s.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean f(int i) {
        if (isPointerDown(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }
}
