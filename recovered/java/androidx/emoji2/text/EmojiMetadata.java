package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class EmojiMetadata {
    public static final int HAS_GLYPH_ABSENT = 1;
    public static final int HAS_GLYPH_EXISTS = 2;
    public static final int HAS_GLYPH_UNKNOWN = 0;
    public static final ThreadLocal d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f1508a;

    /* renamed from: b, reason: collision with root package name */
    public final MetadataRepo f1509b;
    public volatile int c = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HasGlyph {
    }

    public EmojiMetadata(MetadataRepo metadataRepo, int i) {
        this.f1509b = metadataRepo;
        this.f1508a = i;
    }

    public final MetadataItem a() {
        ThreadLocal threadLocal = d;
        MetadataItem metadataItem = (MetadataItem) threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        this.f1509b.getMetadataList().list(metadataItem, this.f1508a);
        return metadataItem;
    }

    public int getId() {
        return a().id();
    }

    public short getWidth() {
        return a().width();
    }

    public short getHeight() {
        return a().height();
    }

    public short getCompatAdded() {
        return a().compatAdded();
    }

    public void draw(@NonNull Canvas canvas, float f, float f2, @NonNull Paint paint) {
        MetadataRepo metadataRepo = this.f1509b;
        Typeface typeface = metadataRepo.d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText(metadataRepo.getEmojiCharArray(), this.f1508a * 2, 2, f, f2, paint);
        paint.setTypeface(typeface2);
    }

    @NonNull
    public Typeface getTypeface() {
        return this.f1509b.d;
    }

    public short getSdkAdded() {
        return a().sdkAdded();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getHasGlyph() {
        return this.c;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public void resetHasGlyphCache() {
        this.c = 0;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setHasGlyph(boolean z) {
        this.c = z ? 2 : 1;
    }

    public boolean isDefaultEmoji() {
        return a().emojiStyle();
    }

    public int getCodepointAt(int i) {
        return a().codepoints(i);
    }

    public int getCodepointsLength() {
        return a().codepointsLength();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(getId()));
        sb.append(", codepoints:");
        int codepointsLength = getCodepointsLength();
        for (int i = 0; i < codepointsLength; i++) {
            sb.append(Integer.toHexString(getCodepointAt(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
