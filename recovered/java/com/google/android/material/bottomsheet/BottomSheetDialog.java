package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.MaterialShapeDrawable;
import gnu.expr.Declaration;

/* loaded from: classes.dex */
public class BottomSheetDialog extends AppCompatDialog {
    public BottomSheetBehavior e;
    public FrameLayout f;

    /* renamed from: g, reason: collision with root package name */
    public CoordinatorLayout f2830g;
    public FrameLayout h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public BottomSheetBehavior.BottomSheetCallback m;
    public final boolean n;
    public final BottomSheetBehavior.BottomSheetCallback o;

    public BottomSheetDialog(@NonNull Context context) {
        this(context, 0);
        this.n = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    public BottomSheetDialog(@NonNull Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.j = true;
        this.k = true;
        this.o = new a();
        supportRequestWindowFeature(1);
        this.j = z;
        this.n = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(e(null, i, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            if (i < 23) {
                window.addFlags(Declaration.PUBLIC_ACCESS);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(e(view, 0, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(e(view, 0, layoutParams));
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.j != z) {
            this.j = z;
            BottomSheetBehavior bottomSheetBehavior = this.e;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.setHideable(z);
            }
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.e;
        if (bottomSheetBehavior == null || bottomSheetBehavior.getState() != 5) {
            return;
        }
        this.e.setState(4);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z = this.n && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.f2830g;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            if (z) {
                window.getDecorView().setSystemUiVisibility(768);
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> behavior = getBehavior();
        if (!this.i || behavior.getState() == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.j) {
            this.j = true;
        }
        this.k = z;
        this.l = true;
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> getBehavior() {
        if (this.e == null) {
            d();
        }
        return this.e;
    }

    public void setDismissWithAnimation(boolean z) {
        this.i = z;
    }

    public boolean getDismissWithAnimation() {
        return this.i;
    }

    public boolean getEdgeToEdgeEnabled() {
        return this.n;
    }

    public final void d() {
        if (this.f == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.f = frameLayout;
            this.f2830g = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f.findViewById(R.id.design_bottom_sheet);
            this.h = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout2);
            this.e = bottomSheetBehaviorFrom;
            bottomSheetBehaviorFrom.addBottomSheetCallback(this.o);
            this.e.setHideable(this.j);
        }
    }

    public final FrameLayout e(View view, int i, ViewGroup.LayoutParams layoutParams) {
        d();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f.findViewById(R.id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.n) {
            ViewCompat.setOnApplyWindowInsetsListener(this.h, new d(this));
        }
        this.h.removeAllViews();
        if (layoutParams == null) {
            this.h.addView(view);
        } else {
            this.h.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new e(this));
        ViewCompat.setAccessibilityDelegate(this.h, new f(this));
        this.h.setOnTouchListener(new g());
        return this.f;
    }

    public BottomSheetDialog(@NonNull Context context, @StyleRes int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true)) {
                i = typedValue.resourceId;
            } else {
                i = R.style.Theme_Design_Light_BottomSheetDialog;
            }
        }
        super(context, i);
        this.j = true;
        this.k = true;
        this.o = new a();
        supportRequestWindowFeature(1);
        this.n = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    public class a extends BottomSheetBehavior.BottomSheetCallback {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
        }

        public a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialog.this.cancel();
            }
        }
    }

    public static class b extends BottomSheetBehavior.BottomSheetCallback {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f2832a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f2833b;
        public final WindowInsetsCompat c;

        public b(View view, WindowInsetsCompat windowInsetsCompat) {
            ColorStateList backgroundTintList;
            this.c = windowInsetsCompat;
            boolean z = Build.VERSION.SDK_INT >= 23 && (view.getSystemUiVisibility() & 8192) != 0;
            this.f2833b = z;
            MaterialShapeDrawable materialShapeDrawable = BottomSheetBehavior.from(view).i;
            if (materialShapeDrawable != null) {
                backgroundTintList = materialShapeDrawable.getFillColor();
            } else {
                backgroundTintList = ViewCompat.getBackgroundTintList(view);
            }
            if (backgroundTintList != null) {
                this.f2832a = MaterialColors.isColorLight(backgroundTintList.getDefaultColor());
            } else if (view.getBackground() instanceof ColorDrawable) {
                this.f2832a = MaterialColors.isColorLight(((ColorDrawable) view.getBackground()).getColor());
            } else {
                this.f2832a = z;
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            b(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
            b(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void a(View view) {
            b(view);
        }

        public final void b(View view) {
            int top = view.getTop();
            WindowInsetsCompat windowInsetsCompat = this.c;
            if (top < windowInsetsCompat.getSystemWindowInsetTop()) {
                BottomSheetDialog.setLightStatusBar(view, this.f2832a);
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            } else if (view.getTop() != 0) {
                BottomSheetDialog.setLightStatusBar(view, this.f2833b);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }
    }

    public static void setLightStatusBar(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }
}
