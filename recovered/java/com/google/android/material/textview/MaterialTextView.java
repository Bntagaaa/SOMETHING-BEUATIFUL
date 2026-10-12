package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) throws Resources.NotFoundException {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (MaterialAttributes.resolveBoolean(context2, com.google.android.material.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = com.google.android.material.R.styleable.MaterialTextView;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i, i2);
            int[] iArr2 = {com.google.android.material.R.styleable.MaterialTextView_android_lineHeight, com.google.android.material.R.styleable.MaterialTextView_lineHeight};
            int dimensionPixelSize = -1;
            for (int i3 = 0; i3 < 2 && dimensionPixelSize < 0; i3++) {
                dimensionPixelSize = MaterialResources.getDimensionPixelSize(context2, typedArrayObtainStyledAttributes, iArr2[i3], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (dimensionPixelSize != -1) {
                return;
            }
            TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i, i2);
            int resourceId = typedArrayObtainStyledAttributes2.getResourceId(com.google.android.material.R.styleable.MaterialTextView_android_textAppearance, -1);
            typedArrayObtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, com.google.android.material.R.styleable.MaterialTextAppearance);
                Context context3 = getContext();
                int[] iArr3 = {com.google.android.material.R.styleable.MaterialTextAppearance_android_lineHeight, com.google.android.material.R.styleable.MaterialTextAppearance_lineHeight};
                int dimensionPixelSize2 = -1;
                for (int i4 = 0; i4 < 2 && dimensionPixelSize2 < 0; i4++) {
                    dimensionPixelSize2 = MaterialResources.getDimensionPixelSize(context3, typedArrayObtainStyledAttributes3, iArr3[i4], -1);
                }
                typedArrayObtainStyledAttributes3.recycle();
                if (dimensionPixelSize2 >= 0) {
                    setLineHeight(dimensionPixelSize2);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) throws Resources.NotFoundException {
        super.setTextAppearance(context, i);
        if (MaterialAttributes.resolveBoolean(context, com.google.android.material.R.attr.textAppearanceLineHeightEnabled, true)) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i, com.google.android.material.R.styleable.MaterialTextAppearance);
            Context context2 = getContext();
            int[] iArr = {com.google.android.material.R.styleable.MaterialTextAppearance_android_lineHeight, com.google.android.material.R.styleable.MaterialTextAppearance_lineHeight};
            int dimensionPixelSize = -1;
            for (int i2 = 0; i2 < 2 && dimensionPixelSize < 0; i2++) {
                dimensionPixelSize = MaterialResources.getDimensionPixelSize(context2, typedArrayObtainStyledAttributes, iArr[i2], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (dimensionPixelSize >= 0) {
                setLineHeight(dimensionPixelSize);
            }
        }
    }
}
