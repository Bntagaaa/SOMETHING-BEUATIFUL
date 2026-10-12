package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ICUCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f1201a;

    static {
        if (Build.VERSION.SDK_INT < 24) {
            try {
                f1201a = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
    }

    @Nullable
    public static String maximizeAndGetScript(@NonNull Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return b.c(b.a(b.b(locale)));
        }
        try {
            return a.a((Locale) f1201a.invoke(null, locale));
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return a.a(locale);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return a.a(locale);
        }
    }

    private ICUCompat() {
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static ULocale b(Locale locale) {
            return ULocale.forLocale(locale);
        }

        @DoNotInline
        public static ULocale a(Object obj) {
            return ULocale.addLikelySubtags((ULocale) obj);
        }

        @DoNotInline
        public static String c(Object obj) {
            return ((ULocale) obj).getScript();
        }
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static String a(Locale locale) {
            return locale.getScript();
        }
    }
}
