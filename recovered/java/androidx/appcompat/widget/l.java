package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class l extends j {
    public final AppCompatSeekBar d;
    public Drawable e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f487g;
    public boolean h;
    public boolean i;

    public l(AppCompatSeekBar appCompatSeekBar) {
        super(appCompatSeekBar);
        this.f = null;
        this.f487g = null;
        this.h = false;
        this.i = false;
        this.d = appCompatSeekBar;
    }

    @Override // androidx.appcompat.widget.j
    public final void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        AppCompatSeekBar appCompatSeekBar = this.d;
        Context context = appCompatSeekBar.getContext();
        int[] iArr = R.styleable.AppCompatSeekBar;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(appCompatSeekBar, appCompatSeekBar.getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            appCompatSeekBar.setThumb(drawableIfKnown);
        }
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.AppCompatSeekBar_tickMark);
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.e = drawable;
        if (drawable != null) {
            drawable.setCallback(appCompatSeekBar);
            DrawableCompat.setLayoutDirection(drawable, ViewCompat.getLayoutDirection(appCompatSeekBar));
            if (drawable.isStateful()) {
                drawable.setState(appCompatSeekBar.getDrawableState());
            }
            c();
        }
        appCompatSeekBar.invalidate();
        int i2 = R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f487g = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i2, -1), this.f487g);
            this.i = true;
        }
        int i3 = R.styleable.AppCompatSeekBar_tickMarkTint;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i3)) {
            this.f = tintTypedArrayObtainStyledAttributes.getColorStateList(i3);
            this.h = true;
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        c();
    }

    public final void c() {
        Drawable drawable = this.e;
        if (drawable != null) {
            if (this.h || this.i) {
                Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
                this.e = drawableWrap;
                if (this.h) {
                    DrawableCompat.setTintList(drawableWrap, this.f);
                }
                if (this.i) {
                    DrawableCompat.setTintMode(this.e, this.f487g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(this.d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.e != null) {
            int max = this.d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.e.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
