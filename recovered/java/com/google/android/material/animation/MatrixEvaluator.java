package com.google.android.material.animation;

import _COROUTINE.a;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f2738a = new float[9];

    /* renamed from: b, reason: collision with root package name */
    public final float[] f2739b = new float[9];
    public final Matrix c = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        float[] fArr = this.f2738a;
        matrix.getValues(fArr);
        float[] fArr2 = this.f2739b;
        matrix2.getValues(fArr2);
        for (int i = 0; i < 9; i++) {
            float f2 = fArr2[i];
            float f3 = fArr[i];
            fArr2[i] = a.a(f2, f3, f, f3);
        }
        Matrix matrix3 = this.c;
        matrix3.setValues(fArr2);
        return matrix3;
    }
}
