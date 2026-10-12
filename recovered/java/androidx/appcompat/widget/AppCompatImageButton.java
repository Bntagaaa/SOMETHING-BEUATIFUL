package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;

/* loaded from: classes.dex */
public class AppCompatImageButton extends ImageButton implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: a, reason: collision with root package name */
    public final c f324a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatImageHelper f325b;
    public boolean c;

    public AppCompatImageButton(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.c = false;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        c cVar = new c(this);
        this.f324a = cVar;
        cVar.d(attributeSet, i);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f325b = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f325b.setImageResource(i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null && drawable != null && !this.c) {
            appCompatImageHelper.d = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
            if (this.c) {
                return;
            }
            ImageView imageView = appCompatImageHelper.f326a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(appCompatImageHelper.d);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return !(this.f325b.f326a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        c cVar = this.f324a;
        if (cVar != null) {
            cVar.f(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f324a;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.f324a;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f324a;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f324a;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f324a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null) {
            if (appCompatImageHelper.f327b == null) {
                appCompatImageHelper.f327b = new TintInfo();
            }
            TintInfo tintInfo = appCompatImageHelper.f327b;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
            appCompatImageHelper.a();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportImageTintList() {
        TintInfo tintInfo;
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper == null || (tintInfo = appCompatImageHelper.f327b) == null) {
            return null;
        }
        return tintInfo.mTintList;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null) {
            if (appCompatImageHelper.f327b == null) {
                appCompatImageHelper.f327b = new TintInfo();
            }
            TintInfo tintInfo = appCompatImageHelper.f327b;
            tintInfo.mTintMode = mode;
            tintInfo.mHasTintMode = true;
            appCompatImageHelper.a();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportImageTintMode() {
        TintInfo tintInfo;
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper == null || (tintInfo = appCompatImageHelper.f327b) == null) {
            return null;
        }
        return tintInfo.mTintMode;
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.f324a;
        if (cVar != null) {
            cVar.a();
        }
        AppCompatImageHelper appCompatImageHelper = this.f325b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.c = true;
    }
}
