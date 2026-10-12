package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AppCompatImageHelper {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f326a;

    /* renamed from: b, reason: collision with root package name */
    public TintInfo f327b;
    public TintInfo c;
    public int d = 0;

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.f326a = imageView;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = this.f326a;
        Context context = imageView.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        ImageView imageView2 = this.f326a;
        ViewCompat.saveAttributeDataForStyleable(imageView2, imageView2.getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.getDrawable(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            int i2 = R.styleable.AppCompatImageView_tint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
                ImageViewCompat.setImageTintList(imageView, tintTypedArrayObtainStyledAttributes.getColorStateList(i2));
            }
            int i3 = R.styleable.AppCompatImageView_tintMode;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i3)) {
                ImageViewCompat.setImageTintMode(imageView, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i3, -1), null));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
        } catch (Throwable th) {
            tintTypedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setImageResource(int i) {
        ImageView imageView = this.f326a;
        if (i != 0) {
            Drawable drawable = AppCompatResources.getDrawable(imageView.getContext(), i);
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageDrawable(null);
        }
        a();
    }

    public final void a() {
        ImageView imageView = this.f326a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.a(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 && i == 21) {
                if (this.c == null) {
                    this.c = new TintInfo();
                }
                TintInfo tintInfo = this.c;
                tintInfo.mTintList = null;
                tintInfo.mHasTintList = false;
                tintInfo.mTintMode = null;
                tintInfo.mHasTintMode = false;
                ColorStateList imageTintList = ImageViewCompat.getImageTintList(imageView);
                if (imageTintList != null) {
                    tintInfo.mHasTintList = true;
                    tintInfo.mTintList = imageTintList;
                }
                PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(imageView);
                if (imageTintMode != null) {
                    tintInfo.mHasTintMode = true;
                    tintInfo.mTintMode = imageTintMode;
                }
                if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                    AppCompatDrawableManager.a(drawable, tintInfo, imageView.getDrawableState());
                    return;
                }
            }
            TintInfo tintInfo2 = this.f327b;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.a(drawable, tintInfo2, imageView.getDrawableState());
            }
        }
    }
}
