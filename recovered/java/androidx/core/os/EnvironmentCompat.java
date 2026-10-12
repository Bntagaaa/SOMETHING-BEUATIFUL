package androidx.core.os;

import android.os.Environment;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.File;

/* loaded from: classes.dex */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";

    @NonNull
    public static String getStorageState(@NonNull File file) {
        return b.a(file);
    }

    private EnvironmentCompat() {
    }

    @RequiresApi(21)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static String a(File file) {
            return Environment.getExternalStorageState(file);
        }
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static String a(File file) {
            return Environment.getStorageState(file);
        }
    }
}
