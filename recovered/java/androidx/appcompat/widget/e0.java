package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class e0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static e0 k;
    public static e0 l;

    /* renamed from: a, reason: collision with root package name */
    public final View f475a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f476b;
    public final int c;
    public final d0 d;
    public final d0 e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f477g;
    public f0 h;
    public boolean i;
    public boolean j = true;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        e0 e0Var = k;
        if (e0Var != null && e0Var.f475a == view) {
            b(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            e0 e0Var2 = l;
            if (e0Var2 != null && e0Var2.f475a == view) {
                e0Var2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new e0(view, charSequence);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.d0] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.d0] */
    public e0(View view, CharSequence charSequence) {
        final int i = 0;
        this.d = new Runnable(this) { // from class: androidx.appcompat.widget.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e0 f472b;

            {
                this.f472b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i) {
                    case 0:
                        this.f472b.c(false);
                        break;
                    default:
                        this.f472b.a();
                        break;
                }
            }
        };
        final int i2 = 1;
        this.e = new Runnable(this) { // from class: androidx.appcompat.widget.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e0 f472b;

            {
                this.f472b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i2) {
                    case 0:
                        this.f472b.c(false);
                        break;
                    default:
                        this.f472b.a();
                        break;
                }
            }
        };
        this.f475a = view;
        this.f476b = charSequence;
        this.c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) throws Resources.NotFoundException {
        this.f = view.getWidth() / 2;
        this.f477g = view.getHeight() / 2;
        c(true);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            androidx.appcompat.widget.f0 r4 = r3.h
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.i
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.f475a
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.j = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            androidx.appcompat.widget.f0 r4 = r3.h
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.j
            if (r1 != 0) goto L66
            int r1 = r3.f
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.c
            if (r1 > r2) goto L66
            int r1 = r3.f477g
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f = r4
            r3.f477g = r5
            r3.j = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.e0.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    public final void c(boolean z) throws Resources.NotFoundException {
        int height;
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.f475a;
        if (ViewCompat.isAttachedToWindow(view)) {
            b(null);
            e0 e0Var = l;
            if (e0Var != null) {
                e0Var.a();
            }
            l = this;
            this.i = z;
            f0 f0Var = new f0(view.getContext());
            this.h = f0Var;
            int width = this.f;
            int i5 = this.f477g;
            boolean z2 = this.i;
            View view2 = f0Var.f481b;
            ViewParent parent = view2.getParent();
            Context context = f0Var.f480a;
            if (parent != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            f0Var.c.setText(this.f476b);
            WindowManager.LayoutParams layoutParams = f0Var.d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i5 + dimensionPixelOffset2;
                i = i5 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z2 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                Rect rect = f0Var.e;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i2 = width;
                    i3 = i;
                    i4 = 0;
                    c = 1;
                } else {
                    Resources resources = context.getResources();
                    c = 1;
                    i2 = width;
                    i3 = i;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i4 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = f0Var.f482g;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = f0Var.f;
                view.getLocationOnScreen(iArr2);
                int i6 = iArr2[i4] - iArr[i4];
                iArr2[i4] = i6;
                iArr2[c] = iArr2[c] - iArr[c];
                layoutParams.x = (i6 + i2) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, i4);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i7 = iArr2[c];
                int i8 = ((i7 + i3) - dimensionPixelOffset3) - measuredHeight;
                int i9 = i7 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i8 >= 0) {
                        layoutParams.y = i8;
                    } else {
                        layoutParams.y = i9;
                    }
                } else if (measuredHeight + i9 <= rect.height()) {
                    layoutParams.y = i9;
                } else {
                    layoutParams.y = i8;
                }
            }
            ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.i) {
                j2 = 2500;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(view) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            d0 d0Var = this.e;
            view.removeCallbacks(d0Var);
            view.postDelayed(d0Var, j2);
        }
    }

    public final void a() {
        e0 e0Var = l;
        View view = this.f475a;
        if (e0Var == this) {
            l = null;
            f0 f0Var = this.h;
            if (f0Var != null) {
                View view2 = f0Var.f481b;
                if (view2.getParent() != null) {
                    ((WindowManager) f0Var.f480a.getSystemService("window")).removeView(view2);
                }
                this.h = null;
                this.j = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (k == this) {
            b(null);
        }
        view.removeCallbacks(this.e);
    }

    public static void b(e0 e0Var) {
        e0 e0Var2 = k;
        if (e0Var2 != null) {
            e0Var2.f475a.removeCallbacks(e0Var2.d);
        }
        k = e0Var;
        if (e0Var != null) {
            e0Var.f475a.postDelayed(e0Var.d, ViewConfiguration.getLongPressTimeout());
        }
    }
}
