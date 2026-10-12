package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.l;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public static final int ANIMATION_MODE_FADE = 1;
    public static final int ANIMATION_MODE_SLIDE = 0;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f3230a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3231b;
    public final com.google.android.material.snackbar.ContentViewCallback c;
    public int d;
    public boolean e;
    public f f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3232g;
    public final Runnable h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public ArrayList o;
    public Behavior p;
    public final AccessibilityManager q;
    public final e r;

    @NonNull
    protected final SnackbarBaseLayout view;
    public static final int[] t = {R.attr.snackbarStyle};
    public static final Handler s = new Handler(Looper.getMainLooper(), new a());

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface AnimationMode {
    }

    public static abstract class BaseCallback<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface DismissEvent {
        }

        public void onDismissed(B b2, int i) {
        }

        public void onShown(B b2) {
        }
    }

    @Deprecated
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @IntRange(from = WorkQueueKt.NOTHING_TO_STEAL)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Duration {
    }

    public class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
            int i = message.what;
            if (i == 0) {
                BaseTransientBottomBar<?> baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                if (baseTransientBottomBar.view.getParent() == null) {
                    ViewGroup.LayoutParams layoutParams = baseTransientBottomBar.view.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                        SwipeDismissBehavior<? extends View> newBehavior = baseTransientBottomBar.p;
                        if (newBehavior == null) {
                            newBehavior = baseTransientBottomBar.getNewBehavior();
                        }
                        if (newBehavior instanceof Behavior) {
                            ((Behavior) newBehavior).k.setBaseTransientBottomBar(baseTransientBottomBar);
                        }
                        newBehavior.setListener(new i(baseTransientBottomBar));
                        layoutParams2.setBehavior(newBehavior);
                        if (baseTransientBottomBar.getAnchorView() == null) {
                            layoutParams2.insetEdge = 80;
                        }
                    }
                    SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
                    snackbarBaseLayout.i = true;
                    baseTransientBottomBar.f3230a.addView(snackbarBaseLayout);
                    snackbarBaseLayout.i = false;
                    baseTransientBottomBar.c();
                    baseTransientBottomBar.view.setVisibility(4);
                }
                if (ViewCompat.isLaidOut(baseTransientBottomBar.view)) {
                    baseTransientBottomBar.d();
                    return true;
                }
                baseTransientBottomBar.n = true;
                return true;
            }
            if (i != 1) {
                return false;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            int i2 = message.arg1;
            AccessibilityManager accessibilityManager = baseTransientBottomBar2.q;
            if ((accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) || baseTransientBottomBar2.view.getVisibility() != 0) {
                baseTransientBottomBar2.a(i2);
                return true;
            }
            if (baseTransientBottomBar2.view.f3235b == 1) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
                valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.snackbar.b(baseTransientBottomBar2));
                valueAnimatorOfFloat.setDuration(75L);
                valueAnimatorOfFloat.addListener(new com.google.android.material.snackbar.a(baseTransientBottomBar2, i2));
                valueAnimatorOfFloat.start();
                return true;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            int height = baseTransientBottomBar2.view.getHeight();
            ViewGroup.LayoutParams layoutParams3 = baseTransientBottomBar2.view.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                height += ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
            }
            valueAnimator.setIntValues(0, height);
            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new com.google.android.material.snackbar.f(baseTransientBottomBar2, i2));
            valueAnimator.addUpdateListener(new g(baseTransientBottomBar2));
            valueAnimator.start();
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.view == null || (context = baseTransientBottomBar.f3231b) == null) {
                return;
            }
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            int[] iArr = new int[2];
            baseTransientBottomBar.view.getLocationOnScreen(iArr);
            int height = (i - (baseTransientBottomBar.view.getHeight() + iArr[1])) + ((int) baseTransientBottomBar.view.getTranslationY());
            if (height >= baseTransientBottomBar.l) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar.view.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                int i2 = BaseTransientBottomBar.ANIMATION_MODE_SLIDE;
                Log.w("BaseTransientBottomBar", "Unable to apply gesture inset because layout params are not MarginLayoutParams");
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.bottomMargin = (baseTransientBottomBar.l - height) + marginLayoutParams.bottomMargin;
                baseTransientBottomBar.view.requestLayout();
            }
        }
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this(viewGroup.getContext(), viewGroup, view, contentViewCallback);
    }

    public BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this.f3232g = false;
        this.h = new b();
        this.r = new e();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (contentViewCallback == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f3230a = viewGroup;
        this.c = contentViewCallback;
        this.f3231b = context;
        ThemeEnforcement.checkAppCompatTheme(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(getSnackbarBaseLayoutResId(), viewGroup, false);
        this.view = snackbarBaseLayout;
        snackbarBaseLayout.f3234a = this;
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float f2 = snackbarBaseLayout.c;
            if (f2 != 1.0f) {
                snackbarContentLayout.f3245b.setTextColor(MaterialColors.layer(MaterialColors.getColor(snackbarContentLayout, R.attr.colorSurface), snackbarContentLayout.f3245b.getCurrentTextColor(), f2));
            }
            snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.e);
        }
        snackbarBaseLayout.addView(view);
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new c());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new d());
        this.q = (AccessibilityManager) context.getSystemService("accessibility");
    }

    public class c implements OnApplyWindowInsetsListener {
        public c() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            baseTransientBottomBar.i = systemWindowInsetBottom;
            baseTransientBottomBar.j = windowInsetsCompat.getSystemWindowInsetLeft();
            baseTransientBottomBar.k = windowInsetsCompat.getSystemWindowInsetRight();
            baseTransientBottomBar.e();
            return windowInsetsCompat;
        }
    }

    public class d extends AccessibilityDelegateCompat {
        public d() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                BaseTransientBottomBar.this.dismiss();
                return true;
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    public final void e() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            SnackbarBaseLayout snackbarBaseLayout = this.view;
            if (snackbarBaseLayout.h != null) {
                if (snackbarBaseLayout.getParent() == null) {
                    return;
                }
                int i = getAnchorView() != null ? this.m : this.i;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                SnackbarBaseLayout snackbarBaseLayout2 = this.view;
                Rect rect = snackbarBaseLayout2.h;
                marginLayoutParams.bottomMargin = rect.bottom + i;
                marginLayoutParams.leftMargin = rect.left + this.j;
                marginLayoutParams.rightMargin = rect.right + this.k;
                marginLayoutParams.topMargin = rect.top;
                snackbarBaseLayout2.requestLayout();
                if (Build.VERSION.SDK_INT < 29 || this.l <= 0 || this.e) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = this.view.getLayoutParams();
                if ((layoutParams2 instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams2).getBehavior() instanceof SwipeDismissBehavior)) {
                    SnackbarBaseLayout snackbarBaseLayout3 = this.view;
                    Runnable runnable = this.h;
                    snackbarBaseLayout3.removeCallbacks(runnable);
                    this.view.post(runnable);
                    return;
                }
                return;
            }
        }
        Log.w("BaseTransientBottomBar", "Unable to update margins because layout params are not MarginLayoutParams");
    }

    @LayoutRes
    public int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    public boolean hasSnackbarStyleAttr() {
        TypedArray typedArrayObtainStyledAttributes = this.f3231b.obtainStyledAttributes(t);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    @NonNull
    public B setDuration(int i) {
        this.d = i;
        return this;
    }

    public int getDuration() {
        return this.d;
    }

    @NonNull
    public B setGestureInsetBottomIgnored(boolean z) {
        this.e = z;
        return this;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.e;
    }

    public int getAnimationMode() {
        return this.view.f3235b;
    }

    @NonNull
    public B setAnimationMode(int i) {
        this.view.f3235b = i;
        return this;
    }

    @Nullable
    public View getAnchorView() {
        f fVar = this.f;
        if (fVar == null) {
            return null;
        }
        return (View) fVar.f3241b.get();
    }

    @NonNull
    public B setAnchorView(@Nullable View view) {
        f fVar;
        f fVar2 = this.f;
        if (fVar2 != null) {
            fVar2.a();
        }
        if (view == null) {
            fVar = null;
        } else {
            f fVar3 = new f(this, view);
            if (ViewCompat.isAttachedToWindow(view)) {
                ViewUtils.addOnGlobalLayoutListener(view, fVar3);
            }
            view.addOnAttachStateChangeListener(fVar3);
            fVar = fVar3;
        }
        this.f = fVar;
        return this;
    }

    @NonNull
    public B setAnchorView(@IdRes int i) {
        View viewFindViewById = this.f3230a.findViewById(i);
        if (viewFindViewById != null) {
            return (B) setAnchorView(viewFindViewById);
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(i, "Unable to find anchor view with id: "));
    }

    public boolean isAnchorViewLayoutListenerEnabled() {
        return this.f3232g;
    }

    public void setAnchorViewLayoutListenerEnabled(boolean z) {
        this.f3232g = z;
    }

    @NonNull
    public B setBehavior(Behavior behavior) {
        this.p = behavior;
        return this;
    }

    public Behavior getBehavior() {
        return this.p;
    }

    @NonNull
    public Context getContext() {
        return this.f3231b;
    }

    @NonNull
    public View getView() {
        return this.view;
    }

    public void show() {
        l.b().show(getDuration(), this.r);
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public void dispatchDismiss(int i) {
        l.b().dismiss(this.r, i);
    }

    @NonNull
    public B addCallback(@Nullable BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.o == null) {
            this.o = new ArrayList();
        }
        this.o.add(baseCallback);
        return this;
    }

    @NonNull
    public B removeCallback(@Nullable BaseCallback<B> baseCallback) {
        ArrayList arrayList;
        if (baseCallback == null || (arrayList = this.o) == null) {
            return this;
        }
        arrayList.remove(baseCallback);
        return this;
    }

    public boolean isShown() {
        return l.b().isCurrent(this.r);
    }

    public boolean isShownOrQueued() {
        return l.b().isCurrentOrNext(this.r);
    }

    public class e implements l.b {
        public e() {
        }

        @Override // com.google.android.material.snackbar.l.b
        public void show() {
            Handler handler = BaseTransientBottomBar.s;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.l.b
        public void dismiss(int i) {
            Handler handler = BaseTransientBottomBar.s;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }
    }

    @NonNull
    public SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new Behavior();
    }

    public final void c() {
        int height;
        if (getAnchorView() == null) {
            height = 0;
        } else {
            int[] iArr = new int[2];
            getAnchorView().getLocationOnScreen(iArr);
            int i = iArr[1];
            int[] iArr2 = new int[2];
            ViewGroup viewGroup = this.f3230a;
            viewGroup.getLocationOnScreen(iArr2);
            height = (viewGroup.getHeight() + iArr2[1]) - i;
        }
        this.m = height;
        e();
    }

    public final void b() {
        l.b().onShown(this.r);
        ArrayList arrayList = this.o;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((BaseCallback) this.o.get(size)).onShown(this);
            }
        }
    }

    public final void a(int i) {
        l.b().onDismissed(this.r);
        ArrayList arrayList = this.o;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((BaseCallback) this.o.get(size)).onDismissed(this, i);
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    public final void d() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.q;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            if (this.view.getParent() != null) {
                this.view.setVisibility(0);
            }
            b();
            return;
        }
        this.view.post(new j(this));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SnackbarBaseLayout extends FrameLayout {
        public static final View.OnTouchListener j = new a();

        /* renamed from: a, reason: collision with root package name */
        public BaseTransientBottomBar f3234a;

        /* renamed from: b, reason: collision with root package name */
        public int f3235b;
        public final float c;
        public final int d;
        public final int e;
        public ColorStateList f;

        /* renamed from: g, reason: collision with root package name */
        public PorterDuff.Mode f3236g;
        public Rect h;
        public boolean i;

        public class a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        public SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
            Drawable drawableWrap;
            super(MaterialThemeOverlay.wrap(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r1, 0));
            }
            this.f3235b = typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(j);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(MaterialColors.layer(this, R.attr.colorSurface, R.attr.colorOnSurface, f));
                if (this.f != null) {
                    drawableWrap = DrawableCompat.wrap(gradientDrawable);
                    DrawableCompat.setTintList(drawableWrap, this.f);
                } else {
                    drawableWrap = DrawableCompat.wrap(gradientDrawable);
                }
                ViewCompat.setBackground(this, drawableWrap);
            }
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f);
                DrawableCompat.setTintMode(drawable, this.f3236g);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f = colorStateList;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(drawableWrap, colorStateList);
                DrawableCompat.setTintMode(drawableWrap, this.f3236g);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f3236g = mode;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(drawableWrap, mode);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : j);
            super.setOnClickListener(onClickListener);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int i3 = this.d;
            if (i3 <= 0 || getMeasuredWidth() <= i3) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar baseTransientBottomBar = this.f3234a;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.n) {
                return;
            }
            baseTransientBottomBar.d();
            baseTransientBottomBar.n = false;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            WindowInsets rootWindowInsets;
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f3234a;
            if (baseTransientBottomBar != null && Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = baseTransientBottomBar.view.getRootWindowInsets()) != null) {
                baseTransientBottomBar.l = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                baseTransientBottomBar.e();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f3234a;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.isShownOrQueued()) {
                return;
            }
            BaseTransientBottomBar.s.post(new h(baseTransientBottomBar));
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.i || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.h = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            BaseTransientBottomBar baseTransientBottomBar = this.f3234a;
            if (baseTransientBottomBar != null) {
                int i = BaseTransientBottomBar.ANIMATION_MODE_SLIDE;
                baseTransientBottomBar.e();
            }
        }
    }

    public static class Behavior extends SwipeDismissBehavior<View> {
        public final BehaviorDelegate k = new BehaviorDelegate(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return this.k.canSwipeDismissView(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.k.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class BehaviorDelegate {

        /* renamed from: a, reason: collision with root package name */
        public e f3233a;

        public BehaviorDelegate(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
            swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
            swipeDismissBehavior.setSwipeDirection(0);
        }

        public void setBaseTransientBottomBar(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f3233a = baseTransientBottomBar.r;
        }

        public boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    l.b().pauseTimeout(this.f3233a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                l.b().restoreTimeoutIfPaused(this.f3233a);
            }
        }
    }

    public static class f implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f3240a;

        /* renamed from: b, reason: collision with root package name */
        public final WeakReference f3241b;

        public f(BaseTransientBottomBar baseTransientBottomBar, View view) {
            this.f3240a = new WeakReference(baseTransientBottomBar);
            this.f3241b = new WeakReference(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            WeakReference weakReference = this.f3240a;
            if (weakReference.get() != null) {
                if (((BaseTransientBottomBar) weakReference.get()).f3232g) {
                    ((BaseTransientBottomBar) weakReference.get()).c();
                    return;
                }
                return;
            }
            a();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (this.f3240a.get() != null) {
                ViewUtils.addOnGlobalLayoutListener(view, this);
            } else {
                a();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (this.f3240a.get() != null) {
                ViewUtils.removeOnGlobalLayoutListener(view, this);
            } else {
                a();
            }
        }

        public final void a() {
            WeakReference weakReference = this.f3241b;
            if (weakReference.get() != null) {
                ((View) weakReference.get()).removeOnAttachStateChangeListener(this);
                ViewUtils.removeOnGlobalLayoutListener((View) weakReference.get(), this);
            }
            weakReference.clear();
            this.f3240a.clear();
        }
    }
}
