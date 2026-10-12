package com.google.android.material.floatingactionbutton;

import android.graphics.Matrix;
import androidx.annotation.NonNull;
import com.google.android.material.animation.MatrixEvaluator;

/* loaded from: classes.dex */
class i extends MatrixEvaluator {
    public final /* synthetic */ m d;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.animation.MatrixEvaluator, android.animation.TypeEvaluator
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        this.d.p = f;
        return super.evaluate(f, matrix, matrix2);
    }

    public i(m mVar) {
        this.d = mVar;
    }
}
