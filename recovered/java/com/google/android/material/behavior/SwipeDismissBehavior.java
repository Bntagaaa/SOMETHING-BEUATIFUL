package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;

    /* renamed from: a, reason: collision with root package name */
    public ViewDragHelper f2793a;

    /* renamed from: b, reason: collision with root package name */
    public OnDismissListener f2794b;
    public boolean c;
    public boolean e;
    public float d = 0.0f;
    public int f = 2;

    /* renamed from: g, reason: collision with root package name */
    public float f2795g = 0.5f;
    public float h = 0.0f;
    public float i = 0.5f;
    public final ViewDragHelper.Callback j = new a();

    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    public void setListener(@Nullable OnDismissListener onDismissListener) {
        this.f2794b = onDismissListener;
    }

    @Nullable
    @VisibleForTesting
    public OnDismissListener getListener() {
        return this.f2794b;
    }

    public void setSwipeDirection(int i) {
        this.f = i;
    }

    public void setSensitivity(float f) {
        this.d = f;
        this.e = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, v, i);
        if (ViewCompat.getImportantForAccessibility(v) == 0) {
            ViewCompat.setImportantForAccessibility(v, 1);
            ViewCompat.removeAccessibilityAction(v, 1048576);
            if (canSwipeDismissView(v)) {
                ViewCompat.replaceAccessibilityAction(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new com.google.android.material.behavior.b(this));
            }
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelperCreate;
        boolean zIsPointInChildBounds = this.c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.c = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.c = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        if (this.f2793a == null) {
            boolean z = this.e;
            ViewDragHelper.Callback callback = this.j;
            if (z) {
                viewDragHelperCreate = ViewDragHelper.create(coordinatorLayout, this.d, callback);
            } else {
                viewDragHelperCreate = ViewDragHelper.create(coordinatorLayout, callback);
            }
            this.f2793a = viewDragHelperCreate;
        }
        return this.f2793a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f2793a;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public class a extends ViewDragHelper.Callback {

        /* renamed from: a, reason: collision with root package name */
        public int f2796a;

        /* renamed from: b, reason: collision with root package name */
        public int f2797b = -1;

        public a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            int i2 = this.f2797b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i) {
            this.f2797b = i;
            this.f2796a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f2794b;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x005d  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r9, float r10, float r11) {
            /*
                r8 = this;
                r11 = -1
                r8.f2797b = r11
                int r11 = r9.getWidth()
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r1 = 1
                r2 = 0
                r3 = 0
                int r4 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r4 == 0) goto L37
                int r5 = androidx.core.view.ViewCompat.getLayoutDirection(r9)
                if (r5 != r1) goto L18
                r5 = 1
                goto L19
            L18:
                r5 = 0
            L19:
                int r6 = r0.f
                r7 = 2
                if (r6 != r7) goto L1f
                goto L51
            L1f:
                if (r6 != 0) goto L2b
                if (r5 == 0) goto L28
                int r10 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r10 >= 0) goto L5d
                goto L51
            L28:
                if (r4 <= 0) goto L5d
                goto L51
            L2b:
                if (r6 != r1) goto L5d
                if (r5 == 0) goto L32
                if (r4 <= 0) goto L5d
                goto L51
            L32:
                int r10 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r10 >= 0) goto L5d
                goto L51
            L37:
                int r10 = r9.getLeft()
                int r3 = r8.f2796a
                int r10 = r10 - r3
                int r3 = r9.getWidth()
                float r3 = (float) r3
                float r4 = r0.f2795g
                float r3 = r3 * r4
                int r3 = java.lang.Math.round(r3)
                int r10 = java.lang.Math.abs(r10)
                if (r10 < r3) goto L5d
            L51:
                int r10 = r9.getLeft()
                int r2 = r8.f2796a
                if (r10 >= r2) goto L5b
                int r2 = r2 - r11
                goto L61
            L5b:
                int r2 = r2 + r11
                goto L61
            L5d:
                int r10 = r8.f2796a
                r2 = r10
                r1 = 0
            L61:
                androidx.customview.widget.ViewDragHelper r10 = r0.f2793a
                int r11 = r9.getTop()
                boolean r10 = r10.settleCapturedViewAt(r2, r11)
                if (r10 == 0) goto L76
                com.google.android.material.behavior.SwipeDismissBehavior$b r10 = new com.google.android.material.behavior.SwipeDismissBehavior$b
                r10.<init>(r9, r1)
                androidx.core.view.ViewCompat.postOnAnimation(r9, r10)
                return
            L76:
                if (r1 == 0) goto L7f
                com.google.android.material.behavior.SwipeDismissBehavior$OnDismissListener r10 = r0.f2794b
                if (r10 == 0) goto L7f
                r10.onDismiss(r9)
            L7f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i3 = SwipeDismissBehavior.this.f;
            if (i3 == 0) {
                if (z) {
                    width = this.f2796a - view.getWidth();
                    width2 = this.f2796a;
                } else {
                    width = this.f2796a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.f2796a - view.getWidth();
                width2 = view.getWidth() + this.f2796a;
            } else if (z) {
                width = this.f2796a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f2796a - view.getWidth();
                width2 = this.f2796a;
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            float f = this.f2796a;
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f2 = (width * swipeDismissBehavior.h) + f;
            float width2 = (view.getWidth() * swipeDismissBehavior.i) + this.f2796a;
            float f3 = i;
            if (f3 <= f2) {
                view.setAlpha(1.0f);
            } else if (f3 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f3 - f2) / (width2 - f2))), 1.0f));
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final View f2798a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f2799b;

        public b(View view, boolean z) {
            this.f2798a = view;
            this.f2799b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            ViewDragHelper viewDragHelper = swipeDismissBehavior.f2793a;
            View view = this.f2798a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(view, this);
            } else {
                if (!this.f2799b || (onDismissListener = swipeDismissBehavior.f2794b) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }
    }

    public void setDragDismissDistance(float f) {
        this.f2795g = Math.min(Math.max(0.0f, f), 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.i = Math.min(Math.max(0.0f, f), 1.0f);
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.h = Math.min(Math.max(0.0f, f), 1.0f);
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.f2793a;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }
}
