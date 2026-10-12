package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.a;

/* loaded from: classes.dex */
public class BlendModeColorFilterCompat {
    @Nullable
    public static ColorFilter createBlendModeColorFilterCompat(int i, @NonNull BlendModeCompat blendModeCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            Object objA = a.b.a(blendModeCompat);
            if (objA != null) {
                return a.a(i, objA);
            }
            return null;
        }
        PorterDuff.Mode modeA = androidx.core.graphics.a.a(blendModeCompat);
        if (modeA != null) {
            return new PorterDuffColorFilter(i, modeA);
        }
        return null;
    }

    private BlendModeColorFilterCompat() {
    }

    @RequiresApi(29)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static ColorFilter a(int i, Object obj) {
            return new BlendModeColorFilter(i, (BlendMode) obj);
        }
    }
}
