package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;
    public static final int o = R.style.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: a, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f3125a;

    /* renamed from: b, reason: collision with root package name */
    public int f3126b;
    public boolean c;
    public final boolean d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public long f3127g;
    public AnimatorDurationScaleProvider h;
    public boolean i;
    public int j;
    public final Runnable k;
    public final Runnable l;
    public final Animatable2Compat.AnimationCallback m;
    public final Animatable2Compat.AnimationCallback n;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ShowAnimationBehavior {
    }

    public abstract BaseProgressIndicatorSpec a(Context context, AttributeSet attributeSet);

    public BaseProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, o), attributeSet, i);
        this.f3127g = -1L;
        this.i = false;
        this.j = 4;
        this.k = new a();
        this.l = new b();
        this.m = new c();
        this.n = new d();
        Context context2 = getContext();
        this.f3125a = a(context2, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.e = typedArrayObtainStyledAttributes.getInt(R.styleable.BaseProgressIndicator_showDelay, -1);
        this.f = Math.min(typedArrayObtainStyledAttributes.getInt(R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayObtainStyledAttributes.recycle();
        this.h = new AnimatorDurationScaleProvider();
        this.d = true;
    }

    public void show() {
        Runnable runnable = this.k;
        int i = this.e;
        if (i > 0) {
            removeCallbacks(runnable);
            postDelayed(runnable, i);
        } else {
            runnable.run();
        }
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.k);
            return;
        }
        Runnable runnable = this.l;
        removeCallbacks(runnable);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f3127g;
        int i = this.f;
        if (jUptimeMillis >= i) {
            runnable.run();
        } else {
            postDelayed(runnable, i - jUptimeMillis);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        applyNewVisibility(i == 0);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        applyNewVisibility(false);
    }

    public void applyNewVisibility(boolean z) {
        if (this.d) {
            ((g) getCurrentDrawable()).setVisible(b(), false, z);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m.registerAnimatorsCompleteCallback(this.m);
        }
        DeterminateDrawable<S> progressDrawable = getProgressDrawable();
        Animatable2Compat.AnimationCallback animationCallback = this.n;
        if (progressDrawable != null) {
            getProgressDrawable().registerAnimationCallback(animationCallback);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(animationCallback);
        }
        if (b()) {
            if (this.f > 0) {
                this.f3127g = SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.l);
        removeCallbacks(this.k);
        ((g) getCurrentDrawable()).hideNow();
        IndeterminateDrawable<S> indeterminateDrawable = getIndeterminateDrawable();
        Animatable2Compat.AnimationCallback animationCallback = this.n;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(animationCallback);
            getIndeterminateDrawable().m.unregisterAnimatorsCompleteCallback();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(animationCallback);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(@NonNull Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        int paddingLeft;
        int paddingTop;
        try {
            super.onMeasure(i, i2);
            h hVar = null;
            if (isIndeterminate()) {
                if (getIndeterminateDrawable() != null) {
                    hVar = getIndeterminateDrawable().l;
                }
            } else if (getProgressDrawable() != null) {
                hVar = getProgressDrawable().l;
            }
            if (hVar == null) {
                return;
            }
            int preferredWidth = hVar.getPreferredWidth();
            int preferredHeight = hVar.getPreferredHeight();
            if (preferredWidth < 0) {
                paddingLeft = getMeasuredWidth();
            } else {
                paddingLeft = preferredWidth + getPaddingLeft() + getPaddingRight();
            }
            if (preferredHeight < 0) {
                paddingTop = getMeasuredHeight();
            } else {
                paddingTop = preferredHeight + getPaddingTop() + getPaddingBottom();
            }
            setMeasuredDimension(paddingLeft, paddingTop);
        } finally {
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (drawable instanceof DeterminateDrawable) {
                DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
                determinateDrawable.hideNow();
                super.setProgressDrawable(determinateDrawable);
                determinateDrawable.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
                return;
            }
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (drawable instanceof IndeterminateDrawable) {
                ((g) drawable).hideNow();
                super.setIndeterminateDrawable(drawable);
                return;
            }
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    public final boolean b() {
        if (!ViewCompat.isAttachedToWindow(this) || getWindowVisibility() != 0) {
            return false;
        }
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            g gVar = (g) getCurrentDrawable();
            if (gVar != null) {
                gVar.hideNow();
            }
            super.setIndeterminate(z);
            g gVar2 = (g) getCurrentDrawable();
            if (gVar2 != null) {
                gVar2.setVisible(b(), false, false);
            }
            if ((gVar2 instanceof IndeterminateDrawable) && b()) {
                ((IndeterminateDrawable) gVar2).m.startAnimator();
            }
            this.i = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Px
    public int getTrackThickness() {
        return this.f3125a.trackThickness;
    }

    public void setTrackThickness(@Px int i) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3125a;
        if (baseProgressIndicatorSpec.trackThickness != i) {
            baseProgressIndicatorSpec.trackThickness = i;
            requestLayout();
        }
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f3125a.indicatorColors;
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.getColor(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f3125a.indicatorColors = iArr;
        getIndeterminateDrawable().m.invalidateSpecValues();
        invalidate();
    }

    @ColorInt
    public int getTrackColor() {
        return this.f3125a.trackColor;
    }

    public void setTrackColor(@ColorInt int i) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3125a;
        if (baseProgressIndicatorSpec.trackColor != i) {
            baseProgressIndicatorSpec.trackColor = i;
            invalidate();
        }
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f3125a.trackCornerRadius;
    }

    public void setTrackCornerRadius(@Px int i) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3125a;
        if (baseProgressIndicatorSpec.trackCornerRadius != i) {
            baseProgressIndicatorSpec.trackCornerRadius = Math.min(i, baseProgressIndicatorSpec.trackThickness / 2);
        }
    }

    public int getShowAnimationBehavior() {
        return this.f3125a.showAnimationBehavior;
    }

    public void setShowAnimationBehavior(int i) {
        this.f3125a.showAnimationBehavior = i;
        invalidate();
    }

    public int getHideAnimationBehavior() {
        return this.f3125a.hideAnimationBehavior;
    }

    public void setHideAnimationBehavior(int i) {
        this.f3125a.hideAnimationBehavior = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i, false);
    }

    public void setProgressCompat(int i, boolean z) {
        if (isIndeterminate()) {
            if (getProgressDrawable() != null) {
                this.f3126b = i;
                this.c = z;
                this.i = true;
                if (!getIndeterminateDrawable().isVisible() || this.h.getSystemAnimatorDurationScale(getContext().getContentResolver()) == 0.0f) {
                    this.m.onAnimationEnd(getIndeterminateDrawable());
                    return;
                } else {
                    getIndeterminateDrawable().m.requestCancelAnimatorAfterCurrentCycle();
                    return;
                }
            }
            return;
        }
        super.setProgress(i);
        if (getProgressDrawable() == null || z) {
            return;
        }
        getProgressDrawable().jumpToCurrentState();
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.j = i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.h = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().c = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().c = animatorDurationScaleProvider;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = BaseProgressIndicator.SHOW_NONE;
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            if (baseProgressIndicator.f > 0) {
                baseProgressIndicator.f3127g = SystemClock.uptimeMillis();
            }
            baseProgressIndicator.setVisibility(0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = BaseProgressIndicator.SHOW_NONE;
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            ((g) baseProgressIndicator.getCurrentDrawable()).setVisible(false, false, true);
            if ((baseProgressIndicator.getProgressDrawable() == null || !baseProgressIndicator.getProgressDrawable().isVisible()) && (baseProgressIndicator.getIndeterminateDrawable() == null || !baseProgressIndicator.getIndeterminateDrawable().isVisible())) {
                baseProgressIndicator.setVisibility(4);
            }
            baseProgressIndicator.f3127g = -1L;
        }
    }

    public class c extends Animatable2Compat.AnimationCallback {
        public c() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setIndeterminate(false);
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f3126b, baseProgressIndicator.c);
        }
    }

    public class d extends Animatable2Compat.AnimationCallback {
        public d() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            if (baseProgressIndicator.i) {
                return;
            }
            baseProgressIndicator.setVisibility(baseProgressIndicator.j);
        }
    }
}
