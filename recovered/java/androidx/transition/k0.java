package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(29)
/* loaded from: classes.dex */
class k0 extends j0 {
    @Override // androidx.transition.g0
    public void setTransitionAlpha(@NonNull View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.transition.g0
    public float getTransitionAlpha(@NonNull View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.j0, androidx.transition.l0
    public void setTransitionVisibility(@NonNull View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.transition.i0, androidx.transition.l0
    public void setLeftTopRightBottom(@NonNull View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.transition.h0
    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.h0
    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // androidx.transition.h0
    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }
}
