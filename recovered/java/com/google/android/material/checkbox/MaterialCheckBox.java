package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int h = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;
    public static final int[][] i = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2857g;

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i2) {
        int i3 = h;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i2, i3), attributeSet, i2);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.MaterialCheckBox, i2, i3, new int[0]);
        int i4 = R.styleable.MaterialCheckBox_buttonTint;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            CompoundButtonCompat.setButtonTintList(this, MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i4));
        }
        this.f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f2857g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (this.f2857g && TextUtils.isEmpty(getText()) && (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) != null) {
            int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (ViewUtils.isLayoutRtl(this) ? -1 : 1);
            int iSave = canvas.save();
            canvas.translate(width, 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(iSave);
            if (getBackground() != null) {
                Rect bounds = buttonDrawable.getBounds();
                DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f = z;
        if (!z) {
            CompoundButtonCompat.setButtonTintList(this, null);
            return;
        }
        if (this.e == null) {
            int color = MaterialColors.getColor(this, R.attr.colorControlActivated);
            int color2 = MaterialColors.getColor(this, R.attr.colorSurface);
            int color3 = MaterialColors.getColor(this, R.attr.colorOnSurface);
            this.e = new ColorStateList(i, new int[]{MaterialColors.layer(color2, color, 1.0f), MaterialColors.layer(color2, color3, 0.54f), MaterialColors.layer(color2, color3, 0.38f), MaterialColors.layer(color2, color3, 0.38f)});
        }
        CompoundButtonCompat.setButtonTintList(this, this.e);
    }

    public boolean isUseMaterialThemeColors() {
        return this.f;
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.f2857g = z;
    }

    public boolean isCenterIfNoTextEnabled() {
        return this.f2857g;
    }
}
