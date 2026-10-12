package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f2737a;

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
        this.f2737a = new Matrix();
    }

    @Override // android.util.Property
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }

    @Override // android.util.Property
    @NonNull
    public Matrix get(@NonNull ImageView imageView) {
        Matrix matrix = this.f2737a;
        matrix.set(imageView.getImageMatrix());
        return matrix;
    }
}
