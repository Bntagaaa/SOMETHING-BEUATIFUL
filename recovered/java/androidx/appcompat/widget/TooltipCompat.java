package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class TooltipCompat {
    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            a.a(view, charSequence);
        } else {
            e0.setTooltipText(view, charSequence);
        }
    }

    private TooltipCompat() {
    }

    @RequiresApi(26)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }
}
