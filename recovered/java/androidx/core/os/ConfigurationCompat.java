package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    @NonNull
    public static LocaleListCompat getLocales(@NonNull Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? LocaleListCompat.wrap(a.a(configuration)) : LocaleListCompat.create(configuration.locale);
    }

    @RequiresApi(24)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }
}
