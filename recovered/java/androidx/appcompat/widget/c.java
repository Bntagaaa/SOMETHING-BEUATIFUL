package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final View f466a;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;
    public int c = -1;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatDrawableManager f467b = AppCompatDrawableManager.get();

    public c(View view) {
        this.f466a = view;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ColorStateList colorStateListE;
        View view = this.f466a;
        Context context = view.getContext();
        int[] iArr = R.styleable.ViewBackgroundHelper;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        View view2 = this.f466a;
        ViewCompat.saveAttributeDataForStyleable(view2, view2.getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            int i2 = R.styleable.ViewBackgroundHelper_android_background;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
                this.c = tintTypedArrayObtainStyledAttributes.getResourceId(i2, -1);
                AppCompatDrawableManager appCompatDrawableManager = this.f467b;
                Context context2 = view.getContext();
                int i3 = this.c;
                synchronized (appCompatDrawableManager) {
                    colorStateListE = appCompatDrawableManager.f318a.e(context2, i3);
                }
                if (colorStateListE != null) {
                    g(colorStateListE);
                }
            }
            int i4 = R.styleable.ViewBackgroundHelper_backgroundTint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i4)) {
                ViewCompat.setBackgroundTintList(view, tintTypedArrayObtainStyledAttributes.getColorStateList(i4));
            }
            int i5 = R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i5)) {
                ViewCompat.setBackgroundTintMode(view, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i5, -1), null));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
        } catch (Throwable th) {
            tintTypedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void f(int i) {
        ColorStateList colorStateListE;
        this.c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.f467b;
        if (appCompatDrawableManager != null) {
            Context context = this.f466a.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateListE = appCompatDrawableManager.f318a.e(context, i);
            }
        } else {
            colorStateListE = null;
        }
        g(colorStateListE);
        a();
    }

    public final void e() {
        this.c = -1;
        g(null);
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new TintInfo();
        }
        TintInfo tintInfo = this.e;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        a();
    }

    public final ColorStateList b() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new TintInfo();
        }
        TintInfo tintInfo = this.e;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        a();
    }

    public final PorterDuff.Mode c() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    public final void a() {
        View view = this.f466a;
        Drawable background = view.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 ? i == 21 : this.d != null) {
                if (this.f == null) {
                    this.f = new TintInfo();
                }
                TintInfo tintInfo = this.f;
                tintInfo.mTintList = null;
                tintInfo.mHasTintList = false;
                tintInfo.mTintMode = null;
                tintInfo.mHasTintMode = false;
                ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
                if (backgroundTintList != null) {
                    tintInfo.mHasTintList = true;
                    tintInfo.mTintList = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(view);
                if (backgroundTintMode != null) {
                    tintInfo.mHasTintMode = true;
                    tintInfo.mTintMode = backgroundTintMode;
                }
                if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                    AppCompatDrawableManager.a(background, tintInfo, view.getDrawableState());
                    return;
                }
            }
            TintInfo tintInfo2 = this.e;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.a(background, tintInfo2, view.getDrawableState());
                return;
            }
            TintInfo tintInfo3 = this.d;
            if (tintInfo3 != null) {
                AppCompatDrawableManager.a(background, tintInfo3, view.getDrawableState());
            }
        }
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new TintInfo();
            }
            TintInfo tintInfo = this.d;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.d = null;
        }
        a();
    }
}
