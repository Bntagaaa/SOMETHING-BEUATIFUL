package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class h0 extends g0 {
    public static boolean f = true;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f2287g = true;
    public static boolean h = true;

    @SuppressLint({"NewApi"})
    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        if (f2287g) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f2287g = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        if (h) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        if (f) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError unused) {
                f = false;
            }
        }
    }
}
