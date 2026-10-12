package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
abstract class g<V extends View> extends i<V> {
    public Runnable d;
    public OverScroller e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f2769g;
    public int h;
    public int i;
    public VelocityTracker j;

    public boolean b(View view) {
        return false;
    }

    public void e(CoordinatorLayout coordinatorLayout, View view) {
    }

    public g() {
        this.f2769g = -1;
        this.i = -1;
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2769g = -1;
        this.i = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008b  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r7, @androidx.annotation.NonNull V r8, @androidx.annotation.NonNull android.view.MotionEvent r9) {
        /*
            r6 = this;
            int r0 = r6.i
            if (r0 >= 0) goto L12
            android.content.Context r0 = r7.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r6.i = r0
        L12:
            int r0 = r9.getActionMasked()
            r1 = 2
            r2 = 1
            r3 = -1
            r4 = 0
            if (r0 != r1) goto L40
            boolean r0 = r6.f
            if (r0 == 0) goto L40
            int r0 = r6.f2769g
            if (r0 != r3) goto L25
            goto L8e
        L25:
            int r0 = r9.findPointerIndex(r0)
            if (r0 != r3) goto L2c
            goto L8e
        L2c:
            float r0 = r9.getY(r0)
            int r0 = (int) r0
            int r1 = r6.h
            int r1 = r0 - r1
            int r1 = java.lang.Math.abs(r1)
            int r5 = r6.i
            if (r1 <= r5) goto L40
            r6.h = r0
            return r2
        L40:
            int r0 = r9.getActionMasked()
            if (r0 != 0) goto L87
            r6.f2769g = r3
            float r0 = r9.getX()
            int r0 = (int) r0
            float r1 = r9.getY()
            int r1 = (int) r1
            boolean r3 = r6.b(r8)
            if (r3 == 0) goto L60
            boolean r7 = r7.isPointInChildBounds(r8, r0, r1)
            if (r7 == 0) goto L60
            r7 = 1
            goto L61
        L60:
            r7 = 0
        L61:
            r6.f = r7
            if (r7 == 0) goto L87
            r6.h = r1
            int r7 = r9.getPointerId(r4)
            r6.f2769g = r7
            android.view.VelocityTracker r7 = r6.j
            if (r7 != 0) goto L77
            android.view.VelocityTracker r7 = android.view.VelocityTracker.obtain()
            r6.j = r7
        L77:
            android.widget.OverScroller r7 = r6.e
            if (r7 == 0) goto L87
            boolean r7 = r7.isFinished()
            if (r7 != 0) goto L87
            android.widget.OverScroller r7 = r6.e
            r7.abortAnimation()
            return r2
        L87:
            android.view.VelocityTracker r7 = r6.j
            if (r7 == 0) goto L8e
            r7.addMovement(r9)
        L8e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.g.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d8 A[ADDED_TO_REGION] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r19, @androidx.annotation.NonNull V r20, @androidx.annotation.NonNull android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.g.onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public final void g(CoordinatorLayout coordinatorLayout, View view, int i) {
        f(coordinatorLayout, view, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public int f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int iClamp;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i2 == 0 || topAndBottomOffset < i2 || topAndBottomOffset > i3 || topAndBottomOffset == (iClamp = MathUtils.clamp(i, i2, i3))) {
            return 0;
        }
        setTopAndBottomOffset(iClamp);
        return topAndBottomOffset - iClamp;
    }

    public int c(View view) {
        return -view.getHeight();
    }

    public int d(View view) {
        return view.getHeight();
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final CoordinatorLayout f2770a;

        /* renamed from: b, reason: collision with root package name */
        public final View f2771b;

        public a(CoordinatorLayout coordinatorLayout, View view) {
            this.f2770a = coordinatorLayout;
            this.f2771b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar;
            OverScroller overScroller;
            View view = this.f2771b;
            if (view == null || (overScroller = (gVar = g.this).e) == null) {
                return;
            }
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            CoordinatorLayout coordinatorLayout = this.f2770a;
            if (zComputeScrollOffset) {
                gVar.g(coordinatorLayout, view, gVar.e.getCurrY());
                ViewCompat.postOnAnimation(view, this);
            } else {
                gVar.e(coordinatorLayout, view);
            }
        }
    }
}
