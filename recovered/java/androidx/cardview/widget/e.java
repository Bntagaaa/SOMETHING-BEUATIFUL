package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
interface e {
    ColorStateList getBackgroundColor(d dVar);

    float getElevation(d dVar);

    float getMaxElevation(d dVar);

    float getMinHeight(d dVar);

    float getMinWidth(d dVar);

    float getRadius(d dVar);

    void initStatic();

    void initialize(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3);

    void onCompatPaddingChanged(d dVar);

    void onPreventCornerOverlapChanged(d dVar);

    void setBackgroundColor(d dVar, @Nullable ColorStateList colorStateList);

    void setElevation(d dVar, float f);

    void setMaxElevation(d dVar, float f);

    void setRadius(d dVar, float f);

    void updatePadding(d dVar);
}
