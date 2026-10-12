package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class TypefaceEmojiSpan extends EmojiSpan {
    public static TextPaint f;

    public TypefaceEmojiSpan(@NonNull EmojiMetadata emojiMetadata) {
        super(emojiMetadata);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, float f2, int i3, int i4, int i5, @NonNull Paint paint) {
        Canvas canvas2;
        float f3;
        if (EmojiCompat.get().isEmojiSpanIndicatorEnabled()) {
            float f4 = i3;
            float f5 = f2 + this.c;
            float f6 = i5;
            if (f == null) {
                TextPaint textPaint = new TextPaint();
                f = textPaint;
                textPaint.setColor(EmojiCompat.get().getEmojiSpanIndicatorColor());
                f.setStyle(Paint.Style.FILL);
            }
            canvas2 = canvas;
            f3 = f2;
            canvas2.drawRect(f3, f4, f5, f6, f);
        } else {
            canvas2 = canvas;
            f3 = f2;
        }
        getMetadata().draw(canvas2, f3, i4, paint);
    }
}
