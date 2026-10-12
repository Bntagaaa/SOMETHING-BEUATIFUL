package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {
    public static final int a0 = R.style.Widget_MaterialComponents_CompoundButton_Switch;
    public static final int[][] b0 = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public final ElevationOverlayProvider T;
    public ColorStateList U;
    public ColorStateList V;
    public boolean W;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = a0;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        this.T = new ElevationOverlayProvider(context2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.SwitchMaterial, i, i2, new int[0]);
        this.W = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.W && getThumbTintList() == null) {
            setThumbTintList(h());
        }
        if (this.W && getTrackTintList() == null) {
            setTrackTintList(i());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.W = z;
        if (z) {
            setThumbTintList(h());
            setTrackTintList(i());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public boolean isUseMaterialThemeColors() {
        return this.W;
    }

    public final ColorStateList h() throws Resources.NotFoundException {
        if (this.U == null) {
            int color = MaterialColors.getColor(this, R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, R.attr.colorControlActivated);
            float dimension = getResources().getDimension(R.dimen.mtrl_switch_thumb_elevation);
            ElevationOverlayProvider elevationOverlayProvider = this.T;
            if (elevationOverlayProvider.isThemeElevationOverlayEnabled()) {
                dimension += ViewUtils.getParentAbsoluteElevation(this);
            }
            int iCompositeOverlayIfNeeded = elevationOverlayProvider.compositeOverlayIfNeeded(color, dimension);
            this.U = new ColorStateList(b0, new int[]{MaterialColors.layer(color, color2, 1.0f), iCompositeOverlayIfNeeded, MaterialColors.layer(color, color2, 0.38f), iCompositeOverlayIfNeeded});
        }
        return this.U;
    }

    public final ColorStateList i() {
        if (this.V == null) {
            int color = MaterialColors.getColor(this, R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, R.attr.colorControlActivated);
            int color3 = MaterialColors.getColor(this, R.attr.colorOnSurface);
            this.V = new ColorStateList(b0, new int[]{MaterialColors.layer(color, color2, 0.54f), MaterialColors.layer(color, color3, 0.32f), MaterialColors.layer(color, color2, 0.12f), MaterialColors.layer(color, color3, 0.12f)});
        }
        return this.V;
    }
}
