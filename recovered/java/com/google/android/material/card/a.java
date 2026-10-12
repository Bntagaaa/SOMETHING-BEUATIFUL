package com.google.android.material.card;

import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;

/* loaded from: classes.dex */
class a extends InsetDrawable {
    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return -1;
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return false;
    }
}
