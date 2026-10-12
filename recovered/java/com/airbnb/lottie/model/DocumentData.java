package com.airbnb.lottie.model;

import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DocumentData {
    public final float baselineShift;

    @ColorInt
    public final int color;
    public final String fontName;
    public final Justification justification;
    public final float lineHeight;
    public final float size;

    @ColorInt
    public final int strokeColor;
    public final boolean strokeOverFill;
    public final float strokeWidth;
    public final String text;
    public final int tracking;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Justification {
        public static final Justification CENTER;
        public static final Justification LEFT_ALIGN;
        public static final Justification RIGHT_ALIGN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Justification[] f2578a;

        public static Justification valueOf(String str) {
            return (Justification) Enum.valueOf(Justification.class, str);
        }

        public static Justification[] values() {
            return (Justification[]) f2578a.clone();
        }

        static {
            Justification justification = new Justification("LEFT_ALIGN", 0);
            LEFT_ALIGN = justification;
            Justification justification2 = new Justification("RIGHT_ALIGN", 1);
            RIGHT_ALIGN = justification2;
            Justification justification3 = new Justification("CENTER", 2);
            CENTER = justification3;
            f2578a = new Justification[]{justification, justification2, justification3};
        }
    }

    public DocumentData(String str, String str2, float f, Justification justification, int i, float f2, float f3, @ColorInt int i2, @ColorInt int i3, float f4, boolean z) {
        this.text = str;
        this.fontName = str2;
        this.size = f;
        this.justification = justification;
        this.tracking = i;
        this.lineHeight = f2;
        this.baselineShift = f3;
        this.color = i2;
        this.strokeColor = i3;
        this.strokeWidth = f4;
        this.strokeOverFill = z;
    }

    public int hashCode() {
        int iOrdinal = ((this.justification.ordinal() + (((int) (((this.fontName.hashCode() + (this.text.hashCode() * 31)) * 31) + this.size)) * 31)) * 31) + this.tracking;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.lineHeight);
        return (((iOrdinal * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.color;
    }
}
