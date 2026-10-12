package androidx.core.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class BundleCompat {

    @SuppressLint({"BanUncheckedReflection"})
    public static class b {
        private b() {
        }
    }

    private BundleCompat() {
    }

    @Nullable
    public static IBinder getBinder(@NonNull Bundle bundle, @Nullable String str) {
        return a.a(bundle, str);
    }

    public static void putBinder(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        a.b(bundle, str, iBinder);
    }

    @RequiresApi(18)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static IBinder a(Bundle bundle, String str) {
            return bundle.getBinder(str);
        }

        @DoNotInline
        public static void b(Bundle bundle, String str, IBinder iBinder) {
            bundle.putBinder(str, iBinder);
        }
    }
}
