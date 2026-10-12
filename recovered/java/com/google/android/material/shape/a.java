package com.google.android.material.shape;

import android.graphics.Matrix;
import androidx.annotation.NonNull;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import java.util.ArrayList;

/* loaded from: classes.dex */
class a implements ShapeAppearancePathProvider.PathListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialShapeDrawable f3214a;

    @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
    public void onCornerPathCreated(@NonNull ShapePath shapePath, Matrix matrix, int i) {
        MaterialShapeDrawable materialShapeDrawable = this.f3214a;
        materialShapeDrawable.d.set(i, shapePath.c);
        shapePath.a(shapePath.endShadowAngle);
        materialShapeDrawable.f3181b[i] = new c(new ArrayList(shapePath.f3203b), new Matrix(matrix));
    }

    @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
    public void onEdgePathCreated(@NonNull ShapePath shapePath, Matrix matrix, int i) {
        MaterialShapeDrawable materialShapeDrawable = this.f3214a;
        materialShapeDrawable.d.set(i + 4, shapePath.c);
        shapePath.a(shapePath.endShadowAngle);
        materialShapeDrawable.c[i] = new c(new ArrayList(shapePath.f3203b), new Matrix(matrix));
    }

    public a(MaterialShapeDrawable materialShapeDrawable) {
        this.f3214a = materialShapeDrawable;
    }
}
