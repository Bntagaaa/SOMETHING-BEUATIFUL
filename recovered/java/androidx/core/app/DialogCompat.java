package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    @NonNull
    public static View requireViewById(@NonNull Dialog dialog, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (View) a.a(dialog, i);
        }
        View viewFindViewById = dialog.findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
    }

    @RequiresApi(28)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static <T> T a(Dialog dialog, int i) {
            return (T) dialog.requireViewById(i);
        }
    }
}
