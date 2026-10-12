package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
/* loaded from: classes.dex */
class j0 extends i0 {
    public static boolean j = true;

    @Override // androidx.transition.l0
    @SuppressLint({"NewApi"})
    public void setTransitionVisibility(@NonNull View view, int i) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i);
        } else if (j) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError unused) {
                j = false;
            }
        }
    }
}
