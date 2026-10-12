package androidx.core.app;

import android.app.LocaleManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.AnyThread;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.core.os.BuildCompat;
import androidx.core.os.LocaleListCompat;
import java.util.Locale;

/* loaded from: classes.dex */
public final class LocaleManagerCompat {
    private LocaleManagerCompat() {
    }

    @NonNull
    @AnyThread
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static LocaleListCompat getSystemLocales(@NonNull Context context) {
        LocaleListCompat emptyLocaleList = LocaleListCompat.getEmptyLocaleList();
        if (!BuildCompat.isAtLeastT()) {
            Configuration configuration = context.getApplicationContext().getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 24) {
                return b.a(configuration);
            }
            return LocaleListCompat.forLanguageTags(a.a(configuration.locale));
        }
        Object systemService = context.getSystemService("locale");
        return systemService != null ? LocaleListCompat.wrap(c.a(systemService)) : emptyLocaleList;
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static String a(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static LocaleListCompat a(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }
    }

    @RequiresApi(33)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getSystemLocales();
        }
    }
}
