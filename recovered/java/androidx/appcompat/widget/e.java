package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CompoundButtonCompat;

/* loaded from: classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    public final CompoundButton f473a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f474b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public e(CompoundButton compoundButton) {
        this.f473a = compoundButton;
    }

    public final void b(AttributeSet attributeSet, int i) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = this.f473a;
        Context context = compoundButton.getContext();
        int[] iArr = R.styleable.CompoundButton;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        CompoundButton compoundButton2 = this.f473a;
        ViewCompat.saveAttributeDataForStyleable(compoundButton2, compoundButton2.getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            int i2 = R.styleable.CompoundButton_buttonCompat;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i2) && (resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(i2, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(AppCompatResources.getDrawable(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else {
                int i3 = R.styleable.CompoundButton_android_button;
                if (tintTypedArrayObtainStyledAttributes.hasValue(i3) && (resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(i3, 0)) != 0) {
                    compoundButton.setButtonDrawable(AppCompatResources.getDrawable(compoundButton.getContext(), resourceId));
                }
            }
            int i4 = R.styleable.CompoundButton_buttonTint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i4)) {
                CompoundButtonCompat.setButtonTintList(compoundButton, tintTypedArrayObtainStyledAttributes.getColorStateList(i4));
            }
            int i5 = R.styleable.CompoundButton_buttonTintMode;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i5)) {
                CompoundButtonCompat.setButtonTintMode(compoundButton, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(i5, -1), null));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
        } catch (Throwable th) {
            tintTypedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void a() throws NoSuchFieldException, SecurityException {
        CompoundButton compoundButton = this.f473a;
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        if (buttonDrawable != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.d) {
                    DrawableCompat.setTintList(drawableMutate, this.f474b);
                }
                if (this.e) {
                    DrawableCompat.setTintMode(drawableMutate, this.c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }
}
