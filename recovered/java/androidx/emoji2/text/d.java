package androidx.emoji2.text;

import android.os.Build;
import android.text.TextPaint;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;

@AnyThread
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class d implements EmojiCompat.GlyphChecker {

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f1527b = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f1528a;

    public d() {
        TextPaint textPaint = new TextPaint();
        this.f1528a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
    public boolean hasGlyph(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 23 && i3 > i4) {
            return false;
        }
        ThreadLocal threadLocal = f1527b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        StringBuilder sb = (StringBuilder) threadLocal.get();
        sb.setLength(0);
        while (i < i2) {
            sb.append(charSequence.charAt(i));
            i++;
        }
        return PaintCompat.hasGlyph(this.f1528a, sb.toString());
    }
}
