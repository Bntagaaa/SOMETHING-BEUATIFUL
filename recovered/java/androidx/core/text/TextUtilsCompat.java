package androidx.core.text;

import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Locale;

/* loaded from: classes.dex */
public final class TextUtilsCompat {
    static {
        new Locale("", "");
    }

    @NonNull
    public static String htmlEncode(@NonNull String str) {
        return TextUtils.htmlEncode(str);
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        return a.a(locale);
    }

    private TextUtilsCompat() {
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int a(Locale locale) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
    }
}
