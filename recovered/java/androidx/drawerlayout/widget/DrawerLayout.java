package androidx.drawerlayout.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import java.util.ArrayList;
import java.util.List;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup implements Openable {
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    public static final boolean N;
    public static final boolean O;
    public static final boolean P;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public CharSequence A;
    public Object B;
    public boolean C;
    public Drawable D;
    public Drawable E;
    public Drawable F;
    public Drawable G;
    public final ArrayList H;
    public Rect I;
    public Matrix J;
    public final AccessibilityViewCommand K;

    /* renamed from: a, reason: collision with root package name */
    public final d f1467a;

    /* renamed from: b, reason: collision with root package name */
    public float f1468b;
    public final int c;
    public int d;
    public float e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final ViewDragHelper f1469g;
    public final ViewDragHelper h;
    public final e i;
    public final e j;
    public int k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public DrawerListener s;
    public ArrayList t;
    public float u;
    public float v;
    public Drawable w;
    public Drawable x;
    public Drawable y;
    public CharSequence z;
    public static final int[] L = {R.attr.colorPrimaryDark};
    public static final int[] M = {R.attr.layout_gravity};

    public interface DrawerListener {
        void onDrawerClosed(@NonNull View view);

        void onDrawerOpened(@NonNull View view);

        void onDrawerSlide(@NonNull View view, float f);

        void onDrawerStateChanged(int i);
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        N = true;
        O = true;
        P = i >= 29;
    }

    public class a implements AccessibilityViewCommand {
        public a() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            if (!drawerLayout.isDrawerOpen(view) || drawerLayout.getDrawerLockMode(view) == 2) {
                return false;
            }
            drawerLayout.closeDrawer(view);
            return true;
        }
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.drawerlayout.R.attr.drawerLayoutStyle);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1467a = new d();
        this.d = -1728053248;
        this.f = new Paint();
        this.m = true;
        this.n = 3;
        this.o = 3;
        this.p = 3;
        this.q = 3;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.K = new a();
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.c = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        e eVar = new e(3);
        this.i = eVar;
        e eVar2 = new e(5);
        this.j = eVar2;
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 1.0f, eVar);
        this.f1469g = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(1);
        viewDragHelperCreate.setMinVelocity(f2);
        eVar.setDragger(viewDragHelperCreate);
        ViewDragHelper viewDragHelperCreate2 = ViewDragHelper.create(this, 1.0f, eVar2);
        this.h = viewDragHelperCreate2;
        viewDragHelperCreate2.setEdgeTrackingEnabled(2);
        viewDragHelperCreate2.setMinVelocity(f2);
        eVar2.setDragger(viewDragHelperCreate2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new c());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new b());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L);
            try {
                this.w = typedArrayObtainStyledAttributes.getDrawable(0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.drawerlayout.R.styleable.DrawerLayout, i, 0);
        try {
            int i2 = androidx.drawerlayout.R.styleable.DrawerLayout_elevation;
            if (typedArrayObtainStyledAttributes2.hasValue(i2)) {
                this.f1468b = typedArrayObtainStyledAttributes2.getDimension(i2, 0.0f);
            } else {
                this.f1468b = getResources().getDimension(androidx.drawerlayout.R.dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.H = new ArrayList();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public class b implements View.OnApplyWindowInsetsListener {
        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    public void setDrawerElevation(float f) {
        this.f1468b = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (j(childAt)) {
                ViewCompat.setElevation(childAt, this.f1468b);
            }
        }
    }

    public float getDrawerElevation() {
        if (O) {
            return this.f1468b;
        }
        return 0.0f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setChildInsets(Object obj, boolean z) {
        this.B = obj;
        this.C = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (O) {
            return;
        }
        if ((i & GravityCompat.START) == 8388611) {
            this.D = drawable;
        } else if ((i & GravityCompat.END) == 8388613) {
            this.E = drawable;
        } else if ((i & 3) == 3) {
            this.F = drawable;
        } else if ((i & 5) != 5) {
            return;
        } else {
            this.G = drawable;
        }
        l();
        invalidate();
    }

    public void setDrawerShadow(@DrawableRes int i, int i2) {
        setDrawerShadow(ContextCompat.getDrawable(getContext(), i), i2);
    }

    public void setScrimColor(@ColorInt int i) {
        this.d = i;
        invalidate();
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.s;
        if (drawerListener2 != null) {
            removeDrawerListener(drawerListener2);
        }
        if (drawerListener != null) {
            addDrawerListener(drawerListener);
        }
        this.s = drawerListener;
    }

    public void addDrawerListener(@NonNull DrawerListener drawerListener) {
        if (drawerListener == null) {
            return;
        }
        if (this.t == null) {
            this.t = new ArrayList();
        }
        this.t.add(drawerListener);
    }

    public void removeDrawerListener(@NonNull DrawerListener drawerListener) {
        ArrayList arrayList;
        if (drawerListener == null || (arrayList = this.t) == null) {
            return;
        }
        arrayList.remove(drawerListener);
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View viewC;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (i2 == 3) {
            this.n = i;
        } else if (i2 == 5) {
            this.o = i;
        } else if (i2 == 8388611) {
            this.p = i;
        } else if (i2 == 8388613) {
            this.q = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f1469g : this.h).cancel();
        }
        if (i != 1) {
            if (i == 2 && (viewC = c(absoluteGravity)) != null) {
                openDrawer(viewC);
                return;
            }
            return;
        }
        View viewC2 = c(absoluteGravity);
        if (viewC2 != null) {
            closeDrawer(viewC2);
        }
    }

    public void setDrawerLockMode(int i, @NonNull View view) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
        }
        setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).gravity);
    }

    public int getDrawerLockMode(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i == 3) {
            int i2 = this.n;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.p : this.q;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        }
        if (i == 5) {
            int i4 = this.o;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.q : this.p;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        }
        if (i == 8388611) {
            int i6 = this.p;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.n : this.o;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        }
        if (i != 8388613) {
            return 0;
        }
        int i8 = this.q;
        if (i8 != 3) {
            return i8;
        }
        int i9 = layoutDirection == 0 ? this.o : this.n;
        if (i9 != 3) {
            return i9;
        }
        return 0;
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).gravity);
    }

    public void setDrawerTitle(int i, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.z = charSequence;
        } else if (absoluteGravity == 5) {
            this.A = charSequence;
        }
    }

    @Nullable
    public CharSequence getDrawerTitle(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.z;
        }
        if (absoluteGravity == 5) {
            return this.A;
        }
        return null;
    }

    public final void p(int i, View view) {
        int i2;
        View rootView;
        int viewDragState = this.f1469g.getViewDragState();
        int viewDragState2 = this.h.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i2 = 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f1470a;
            if (f == 0.0f) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if ((layoutParams.c & 1) == 1) {
                    layoutParams.c = 0;
                    ArrayList arrayList = this.t;
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((DrawerListener) this.t.get(size)).onDrawerClosed(view);
                        }
                    }
                    o(view, false);
                    n(view);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.c & 1) == 0) {
                    layoutParams2.c = 1;
                    ArrayList arrayList2 = this.t;
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            ((DrawerListener) this.t.get(size2)).onDrawerOpened(view);
                        }
                    }
                    o(view, true);
                    n(view);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.k) {
            this.k = i2;
            ArrayList arrayList3 = this.t;
            if (arrayList3 != null) {
                for (int size3 = arrayList3.size() - 1; size3 >= 0; size3--) {
                    ((DrawerListener) this.t.get(size3)).onDrawerStateChanged(i2);
                }
            }
        }
    }

    public final void o(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((!z && !j(childAt)) || (z && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            }
        }
    }

    public final void n(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, this.K);
    }

    public final void m(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f1470a) {
            return;
        }
        layoutParams.f1470a = f;
        ArrayList arrayList = this.t;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((DrawerListener) this.t.get(size)).onDrawerSlide(view, f);
            }
        }
    }

    public final void k(View view, float f) {
        float f2 = ((LayoutParams) view.getLayoutParams()).f1470a;
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (f2 * width));
        if (!a(3, view)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m(view, f);
    }

    public final int f(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    public final boolean a(int i, View view) {
        return (f(view) & i) == i;
    }

    public final View d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).c & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public final View c(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((f(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    public static String g(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        if ((i & 5) == 5) {
            return "RIGHT";
        }
        return Integer.toHexString(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.m = true;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = KeyboardChangeListener.MIN_KEYBOARD_HEIGHT;
            }
            if (mode2 == 0) {
                size2 = KeyboardChangeListener.MIN_KEYBOARD_HEIGHT;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z = this.B != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.gravity, layoutDirection);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (i(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
                } else if (j(childAt)) {
                    if (O) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f = this.f1468b;
                        if (elevation != f) {
                            ViewCompat.setElevation(childAt, f);
                        }
                    }
                    int iF = f(childAt) & 7;
                    boolean z4 = iF == 3;
                    if ((z4 && z2) || (!z4 && z3)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + g(iF) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i, this.c + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i3 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() {
        /*
            r3 = this;
            boolean r0 = androidx.drawerlayout.widget.DrawerLayout.O
            if (r0 == 0) goto L5
            return
        L5:
            int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r3)
            if (r0 != 0) goto L1b
            android.graphics.drawable.Drawable r1 = r3.D
            if (r1 == 0) goto L2b
            boolean r2 = androidx.core.graphics.drawable.DrawableCompat.isAutoMirrored(r1)
            if (r2 == 0) goto L18
            androidx.core.graphics.drawable.DrawableCompat.setLayoutDirection(r1, r0)
        L18:
            android.graphics.drawable.Drawable r0 = r3.D
            goto L2d
        L1b:
            android.graphics.drawable.Drawable r1 = r3.E
            if (r1 == 0) goto L2b
            boolean r2 = androidx.core.graphics.drawable.DrawableCompat.isAutoMirrored(r1)
            if (r2 == 0) goto L28
            androidx.core.graphics.drawable.DrawableCompat.setLayoutDirection(r1, r0)
        L28:
            android.graphics.drawable.Drawable r0 = r3.E
            goto L2d
        L2b:
            android.graphics.drawable.Drawable r0 = r3.F
        L2d:
            r3.x = r0
            int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r3)
            if (r0 != 0) goto L45
            android.graphics.drawable.Drawable r1 = r3.E
            if (r1 == 0) goto L55
            boolean r2 = androidx.core.graphics.drawable.DrawableCompat.isAutoMirrored(r1)
            if (r2 == 0) goto L42
            androidx.core.graphics.drawable.DrawableCompat.setLayoutDirection(r1, r0)
        L42:
            android.graphics.drawable.Drawable r0 = r3.E
            goto L57
        L45:
            android.graphics.drawable.Drawable r1 = r3.D
            if (r1 == 0) goto L55
            boolean r2 = androidx.core.graphics.drawable.DrawableCompat.isAutoMirrored(r1)
            if (r2 == 0) goto L52
            androidx.core.graphics.drawable.DrawableCompat.setLayoutDirection(r1, r0)
        L52:
            android.graphics.drawable.Drawable r0 = r3.D
            goto L57
        L55:
            android.graphics.drawable.Drawable r0 = r3.G
        L57:
            r3.y = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.l():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        this.l = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (i(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(3, childAt)) {
                        float f2 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (layoutParams.f1470a * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        f = (i6 - r11) / f3;
                        i5 = i6 - ((int) (layoutParams.f1470a * f3));
                    }
                    boolean z2 = f != layoutParams.f1470a;
                    int i9 = layoutParams.gravity & 112;
                    if (i9 == 16) {
                        int i10 = i4 - i2;
                        int i11 = (i10 - measuredHeight) / 2;
                        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i11 < i12) {
                            i11 = i12;
                        } else {
                            int i13 = i11 + measuredHeight;
                            int i14 = i10 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i13 > i14) {
                                i11 = i14 - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i11, measuredWidth + i5, measuredHeight + i11);
                    } else if (i9 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        m(childAt, f);
                    }
                    int i17 = layoutParams.f1470a > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        if (P && (rootWindowInsets = getRootWindowInsets()) != null) {
            Insets systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.f1469g;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.left));
            ViewDragHelper viewDragHelper2 = this.h;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.right));
        }
        this.l = false;
        this.m = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.l) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i = 0; i < childCount; i++) {
            fMax = Math.max(fMax, ((LayoutParams) getChildAt(i).getLayoutParams()).f1470a);
        }
        this.e = fMax;
        boolean zContinueSettling = this.f1469g.continueSettling(true);
        boolean zContinueSettling2 = this.h.continueSettling(true);
        if (zContinueSettling || zContinueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.w = drawable;
        invalidate();
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.w;
    }

    public void setStatusBarBackground(int i) {
        this.w = i != 0 ? ContextCompat.getDrawable(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.w = new ColorDrawable(i);
        invalidate();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        l();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.C || this.w == null) {
            return;
        }
        Object obj = this.B;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.w.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        Drawable background;
        int height = getHeight();
        boolean zI = i(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i = 0;
        if (zI) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && (background = childAt.getBackground()) != null && background.getOpacity() == -1 && j(childAt) && childAt.getHeight() >= height) {
                    if (a(3, childAt)) {
                        int right = childAt.getRight();
                        if (right > i2) {
                            i2 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i = i2;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        float f = this.e;
        if (f > 0.0f && zI) {
            int i4 = this.d;
            Paint paint = this.f;
            paint.setColor((i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * f)) << 24));
            canvas.drawRect(i, 0.0f, width, getHeight(), paint);
            return zDrawChild;
        }
        if (this.x != null && a(3, view)) {
            int intrinsicWidth = this.x.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.f1469g.getEdgeSize(), 1.0f));
            this.x.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.x.setAlpha((int) (fMax * 255.0f));
            this.x.draw(canvas);
            return zDrawChild;
        }
        if (this.y != null && a(5, view)) {
            int intrinsicWidth2 = this.y.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.h.getEdgeSize(), 1.0f));
            this.y.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.y.setAlpha((int) (fMax2 * 255.0f));
            this.y.draw(canvas);
        }
        return zDrawChild;
    }

    public static boolean i(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    public static boolean j(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            androidx.customview.widget.ViewDragHelper r1 = r7.f1469g
            boolean r2 = r1.shouldInterceptTouchEvent(r8)
            androidx.customview.widget.ViewDragHelper r3 = r7.h
            boolean r3 = r3.shouldInterceptTouchEvent(r8)
            r2 = r2 | r3
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L36
            if (r0 == r3) goto L2f
            r8 = 2
            r5 = 3
            if (r0 == r8) goto L1e
            if (r0 == r5) goto L2f
            goto L34
        L1e:
            boolean r8 = r1.checkTouchSlop(r5)
            if (r8 == 0) goto L34
            androidx.drawerlayout.widget.DrawerLayout$e r8 = r7.i
            r8.removeCallbacks()
            androidx.drawerlayout.widget.DrawerLayout$e r8 = r7.j
            r8.removeCallbacks()
            goto L34
        L2f:
            r7.b(r3)
            r7.r = r4
        L34:
            r8 = 0
            goto L5c
        L36:
            float r0 = r8.getX()
            float r8 = r8.getY()
            r7.u = r0
            r7.v = r8
            float r5 = r7.e
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L59
            int r0 = (int) r0
            int r8 = (int) r8
            android.view.View r8 = r1.findTopChildUnder(r0, r8)
            if (r8 == 0) goto L59
            boolean r8 = i(r8)
            if (r8 == 0) goto L59
            r8 = 1
            goto L5a
        L59:
            r8 = 0
        L5a:
            r7.r = r4
        L5c:
            if (r2 != 0) goto L7f
            if (r8 != 0) goto L7f
            int r8 = r7.getChildCount()
            r0 = 0
        L65:
            if (r0 >= r8) goto L79
            android.view.View r1 = r7.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.drawerlayout.widget.DrawerLayout$LayoutParams r1 = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) r1
            boolean r1 = r1.f1471b
            if (r1 == 0) goto L76
            goto L7f
        L76:
            int r0 = r0 + 1
            goto L65
        L79:
            boolean r8 = r7.r
            if (r8 == 0) goto L7e
            goto L7f
        L7e:
            return r4
        L7f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean zDispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.e <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (this.I == null) {
                this.I = new Rect();
            }
            childAt.getHitRect(this.I);
            if (this.I.contains((int) x, (int) y) && !i(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.J == null) {
                            this.J = new Matrix();
                        }
                        matrix.invert(this.J);
                        motionEventObtain.transform(this.J);
                    }
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (zDispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            androidx.customview.widget.ViewDragHelper r0 = r6.f1469g
            r0.processTouchEvent(r7)
            androidx.customview.widget.ViewDragHelper r1 = r6.h
            r1.processTouchEvent(r7)
            int r1 = r7.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L5e
            if (r1 == r3) goto L20
            r7 = 3
            if (r1 == r7) goto L1a
            return r3
        L1a:
            r6.b(r3)
            r6.r = r2
            return r3
        L20:
            float r1 = r7.getX()
            float r7 = r7.getY()
            int r4 = (int) r1
            int r5 = (int) r7
            android.view.View r4 = r0.findTopChildUnder(r4, r5)
            if (r4 == 0) goto L59
            boolean r4 = i(r4)
            if (r4 == 0) goto L59
            float r4 = r6.u
            float r1 = r1 - r4
            float r4 = r6.v
            float r7 = r7 - r4
            int r0 = r0.getTouchSlop()
            float r1 = r1 * r1
            float r7 = r7 * r7
            float r7 = r7 + r1
            int r0 = r0 * r0
            float r0 = (float) r0
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 >= 0) goto L59
            android.view.View r7 = r6.d()
            if (r7 == 0) goto L59
            int r7 = r6.getDrawerLockMode(r7)
            r0 = 2
            if (r7 != r0) goto L5a
        L59:
            r2 = 1
        L5a:
            r6.b(r2)
            return r3
        L5e:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.u = r0
            r6.v = r7
            r6.r = r2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            b(true);
        }
    }

    public void closeDrawers() {
        b(false);
    }

    public final void b(boolean z) {
        boolean zSmoothSlideViewTo;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (j(childAt) && (!z || layoutParams.f1471b)) {
                int width = childAt.getWidth();
                if (a(3, childAt)) {
                    int top = childAt.getTop();
                    zSmoothSlideViewTo = this.f1469g.smoothSlideViewTo(childAt, -width, top);
                } else {
                    zSmoothSlideViewTo = this.h.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                }
                z2 |= zSmoothSlideViewTo;
                layoutParams.f1471b = false;
            }
        }
        this.i.removeCallbacks();
        this.j.removeCallbacks();
        if (z2) {
            invalidate();
        }
    }

    @Override // androidx.customview.widget.Openable
    public void open() {
        openDrawer(GravityCompat.START);
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void openDrawer(@NonNull View view, boolean z) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.m) {
            layoutParams.f1470a = 1.0f;
            layoutParams.c = 1;
            o(view, true);
            n(view);
        } else if (z) {
            layoutParams.c |= 2;
            if (a(3, view)) {
                this.f1469g.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.h.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            k(view, 1.0f);
            p(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void openDrawer(int i) {
        openDrawer(i, true);
    }

    public void openDrawer(int i, boolean z) {
        View viewC = c(i);
        if (viewC == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + g(i));
        }
        openDrawer(viewC, z);
    }

    @Override // androidx.customview.widget.Openable
    public void close() {
        closeDrawer(GravityCompat.START);
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawer(@NonNull View view, boolean z) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.m) {
            layoutParams.f1470a = 0.0f;
            layoutParams.c = 0;
        } else if (z) {
            layoutParams.c |= 4;
            if (a(3, view)) {
                this.f1469g.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.h.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
        } else {
            k(view, 0.0f);
            p(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void closeDrawer(int i) {
        closeDrawer(i, true);
    }

    public void closeDrawer(int i, boolean z) {
        View viewC = c(i);
        if (viewC == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + g(i));
        }
        closeDrawer(viewC, z);
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (j(view)) {
            return (((LayoutParams) view.getLayoutParams()).c & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    public boolean isDrawerOpen(int i) {
        View viewC = c(i);
        if (viewC != null) {
            return isDrawerOpen(viewC);
        }
        return false;
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (j(view)) {
            return ((LayoutParams) view.getLayoutParams()).f1470a > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(int i) {
        View viewC = c(i);
        if (viewC != null) {
            return isDrawerVisible(viewC);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ArrayList arrayList2;
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        int i3 = 0;
        boolean z = false;
        while (true) {
            arrayList2 = this.H;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            if (j(childAt)) {
                if (isDrawerOpen(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            } else {
                arrayList2.add(childAt);
            }
            i3++;
        }
        if (!z) {
            int size = arrayList2.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = (View) arrayList2.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        arrayList2.clear();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && e() != null) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public final View e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (j(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View viewE = e();
            if (viewE != null && getDrawerLockMode(viewE) == 0) {
                closeDrawers();
            }
            return viewE != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View viewC;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.f1472b;
        if (i != 0 && (viewC = c(i)) != null) {
            openDrawer(viewC);
        }
        int i2 = savedState.c;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.d;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.e;
        if (i4 != 3) {
            setDrawerLockMode(i4, GravityCompat.START);
        }
        int i5 = savedState.f;
        if (i5 != 3) {
            setDrawerLockMode(i5, GravityCompat.END);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.c;
            boolean z = i2 == 1;
            boolean z2 = i2 == 2;
            if (z || z2) {
                savedState.f1472b = layoutParams.gravity;
                break;
            }
        }
        savedState.c = this.n;
        savedState.d = this.o;
        savedState.e = this.p;
        savedState.f = this.q;
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (d() != null || j(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (N) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.f1467a);
    }

    public static boolean h(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public int f1472b;
        public int c;
        public int d;
        public int e;
        public int f;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1472b = 0;
            this.f1472b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.f1472b = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1472b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
        }

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
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
    }

    public class e extends ViewDragHelper.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final int f1474a;

        /* renamed from: b, reason: collision with root package name */
        public ViewDragHelper f1475b;
        public final Runnable c = new a();

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i) {
            return false;
        }

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                View viewC;
                int width;
                e eVar = e.this;
                int edgeSize = eVar.f1475b.getEdgeSize();
                int i = eVar.f1474a;
                boolean z = i == 3;
                DrawerLayout drawerLayout = DrawerLayout.this;
                if (z) {
                    viewC = drawerLayout.c(3);
                    width = (viewC != null ? -viewC.getWidth() : 0) + edgeSize;
                } else {
                    viewC = drawerLayout.c(5);
                    width = drawerLayout.getWidth() - edgeSize;
                }
                if (viewC != null) {
                    if (((!z || viewC.getLeft() >= width) && (z || viewC.getLeft() <= width)) || drawerLayout.getDrawerLockMode(viewC) != 0) {
                        return;
                    }
                    LayoutParams layoutParams = (LayoutParams) viewC.getLayoutParams();
                    eVar.f1475b.smoothSlideViewTo(viewC, width, viewC.getTop());
                    layoutParams.f1471b = true;
                    drawerLayout.invalidate();
                    View viewC2 = drawerLayout.c(i == 3 ? 5 : 3);
                    if (viewC2 != null) {
                        drawerLayout.closeDrawer(viewC2);
                    }
                    if (drawerLayout.r) {
                        return;
                    }
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        drawerLayout.getChildAt(i2).dispatchTouchEvent(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    drawerLayout.r = true;
                }
            }
        }

        public e(int i) {
            this.f1474a = i;
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.f1475b = viewDragHelper;
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.c);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            return DrawerLayout.j(view) && drawerLayout.a(this.f1474a, view) && drawerLayout.getDrawerLockMode(view) == 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.p(i, this.f1475b.getCapturedView());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            DrawerLayout drawerLayout = DrawerLayout.this;
            float width2 = (drawerLayout.a(3, view) ? i + width : drawerLayout.getWidth() - i) / width;
            drawerLayout.m(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            drawerLayout.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f1471b = false;
            int i2 = this.f1474a == 3 ? 5 : 3;
            DrawerLayout drawerLayout = DrawerLayout.this;
            View viewC = drawerLayout.c(i2);
            if (viewC != null) {
                drawerLayout.closeDrawer(viewC);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            DrawerLayout drawerLayout = DrawerLayout.this;
            int[] iArr = DrawerLayout.L;
            float f3 = ((LayoutParams) view.getLayoutParams()).f1470a;
            int width = view.getWidth();
            if (drawerLayout.a(3, view)) {
                i = (f > 0.0f || (f == 0.0f && f3 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = drawerLayout.getWidth();
                if (f < 0.0f || (f == 0.0f && f3 > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.f1475b.settleCapturedViewAt(i, view.getTop());
            drawerLayout.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.c, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i, int i2) {
            View viewC;
            int i3 = i & 1;
            DrawerLayout drawerLayout = DrawerLayout.this;
            if (i3 == 1) {
                viewC = drawerLayout.c(3);
            } else {
                viewC = drawerLayout.c(5);
            }
            if (viewC == null || drawerLayout.getDrawerLockMode(viewC) != 0) {
                return;
            }
            this.f1475b.captureChildView(viewC, i2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.j(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            if (drawerLayout.a(3, view)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = drawerLayout.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public float f1470a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1471b;
        public int c;
        public int gravity;

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.M);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    public class c extends AccessibilityDelegateCompat {
        public final Rect d = new Rect();

        public c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.N) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompat.setSource(view);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                Rect rect = this.d;
                accessibilityNodeInfoCompatObtain.getBoundsInScreen(rect);
                accessibilityNodeInfoCompat.setBoundsInScreen(rect);
                accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompatObtain.isVisibleToUser());
                accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompatObtain.getPackageName());
                accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompatObtain.getClassName());
                accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompatObtain.getContentDescription());
                accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompatObtain.isEnabled());
                accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompatObtain.isFocused());
                accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompatObtain.isAccessibilityFocused());
                accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompatObtain.isSelected());
                accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompatObtain.getActions());
                accessibilityNodeInfoCompatObtain.recycle();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.h(childAt)) {
                        accessibilityNodeInfoCompat.addChild(childAt);
                    }
                }
            }
            accessibilityNodeInfoCompat.setClassName("androidx.drawerlayout.widget.DrawerLayout");
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            CharSequence drawerTitle;
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                DrawerLayout drawerLayout = DrawerLayout.this;
                View viewE = drawerLayout.e();
                if (viewE == null || (drawerTitle = drawerLayout.getDrawerTitle(drawerLayout.f(viewE))) == null) {
                    return true;
                }
                text.add(drawerTitle);
                return true;
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.N || DrawerLayout.h(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    public static final class d extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.h(view)) {
                return;
            }
            accessibilityNodeInfoCompat.setParent(null);
        }
    }
}
