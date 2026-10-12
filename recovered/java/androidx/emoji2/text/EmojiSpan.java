package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

@RequiresApi(19)
/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {

    /* renamed from: b, reason: collision with root package name */
    public final EmojiMetadata f1511b;

    /* renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f1510a = new Paint.FontMetricsInt();
    public short c = -1;
    public short d = -1;
    public float e = 1.0f;

    public EmojiSpan(EmojiMetadata emojiMetadata) {
        Preconditions.checkNotNull(emojiMetadata, "metadata cannot be null");
        this.f1511b = emojiMetadata;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f1510a;
        paint.getFontMetricsInt(fontMetricsInt2);
        EmojiMetadata emojiMetadata = this.f1511b;
        this.e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / emojiMetadata.getHeight();
        this.d = (short) (emojiMetadata.getHeight() * this.e);
        short width = (short) (emojiMetadata.getWidth() * this.e);
        this.c = width;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return width;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final EmojiMetadata getMetadata() {
        return this.f1511b;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getHeight() {
        return this.d;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getId() {
        return getMetadata().getId();
    }
}
