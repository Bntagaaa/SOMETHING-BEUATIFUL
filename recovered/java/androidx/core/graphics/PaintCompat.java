package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.a;
import androidx.core.util.Pair;

/* loaded from: classes.dex */
public final class PaintCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f1032a = new ThreadLocal();

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean hasGlyph(@NonNull Paint paint, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return a.a(paint, str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float fMeasureText = paint.measureText("\udfffd");
        float fMeasureText2 = paint.measureText("m");
        float fMeasureText3 = paint.measureText(str);
        float fMeasureText4 = 0.0f;
        if (fMeasureText3 == 0.0f) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (fMeasureText3 > fMeasureText2 * 2.0f) {
                return false;
            }
            int i = 0;
            while (i < length) {
                int iCharCount = Character.charCount(str.codePointAt(i)) + i;
                fMeasureText4 += paint.measureText(str, i, iCharCount);
                i = iCharCount;
            }
            if (fMeasureText3 >= fMeasureText4) {
                return false;
            }
        }
        if (fMeasureText3 != fMeasureText) {
            return true;
        }
        ThreadLocal threadLocal = f1032a;
        Pair pair = (Pair) threadLocal.get();
        if (pair == null) {
            pair = new Pair(new Rect(), new Rect());
            threadLocal.set(pair);
        } else {
            ((Rect) pair.first).setEmpty();
            ((Rect) pair.second).setEmpty();
        }
        paint.getTextBounds("\udfffd", 0, 2, (Rect) pair.first);
        paint.getTextBounds(str, 0, length, (Rect) pair.second);
        return !((Rect) pair.first).equals(pair.second);
    }

    public static boolean setBlendMode(@NonNull Paint paint, @Nullable BlendModeCompat blendModeCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.a(paint, blendModeCompat != null ? a.b.a(blendModeCompat) : null);
            return true;
        }
        if (blendModeCompat != null) {
            PorterDuff.Mode modeA = androidx.core.graphics.a.a(blendModeCompat);
            paint.setXfermode(modeA != null ? new PorterDuffXfermode(modeA) : null);
            return modeA != null;
        }
        paint.setXfermode(null);
        return true;
    }

    private PaintCompat() {
    }

    @RequiresApi(29)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void a(Paint paint, Object obj) {
            paint.setBlendMode((BlendMode) obj);
        }
    }

    @RequiresApi(23)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static boolean a(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }
}
