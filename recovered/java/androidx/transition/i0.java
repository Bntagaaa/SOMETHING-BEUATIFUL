package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(22)
/* loaded from: classes.dex */
class i0 extends h0 {
    public static boolean i = true;

    @Override // androidx.transition.l0
    @SuppressLint({"NewApi"})
    public void setLeftTopRightBottom(@NonNull View view, int i2, int i3, int i4, int i5) {
        if (i) {
            try {
                view.setLeftTopRightBottom(i2, i3, i4, i5);
            } catch (NoSuchMethodError unused) {
                i = false;
            }
        }
    }
}
