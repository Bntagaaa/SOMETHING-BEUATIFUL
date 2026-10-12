package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class CursorWindowCompat {
    private CursorWindowCompat() {
    }

    @NonNull
    public static CursorWindow create(@Nullable String str, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            return b.a(str, j);
        }
        return a.a(str);
    }

    @RequiresApi(28)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static CursorWindow a(String str, long j) {
            return new CursorWindow(str, j);
        }
    }

    @RequiresApi(15)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static CursorWindow a(String str) {
            return new CursorWindow(str);
        }
    }
}
