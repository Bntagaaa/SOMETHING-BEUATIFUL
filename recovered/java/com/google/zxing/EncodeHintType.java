package com.google.zxing;

import com.google.zxing.client.android.Intents;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class EncodeHintType {
    public static final EncodeHintType CHARACTER_SET;
    public static final EncodeHintType ERROR_CORRECTION;
    public static final EncodeHintType MARGIN;
    public static final EncodeHintType PDF417_COMPACT;
    public static final EncodeHintType PDF417_COMPACTION;
    public static final EncodeHintType PDF417_DIMENSIONS;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ EncodeHintType[] f5074a;

    public static EncodeHintType valueOf(String str) {
        return (EncodeHintType) Enum.valueOf(EncodeHintType.class, str);
    }

    public static EncodeHintType[] values() {
        return (EncodeHintType[]) f5074a.clone();
    }

    static {
        EncodeHintType encodeHintType = new EncodeHintType("ERROR_CORRECTION", 0);
        ERROR_CORRECTION = encodeHintType;
        EncodeHintType encodeHintType2 = new EncodeHintType(Intents.Scan.CHARACTER_SET, 1);
        CHARACTER_SET = encodeHintType2;
        EncodeHintType encodeHintType3 = new EncodeHintType("MARGIN", 2);
        MARGIN = encodeHintType3;
        EncodeHintType encodeHintType4 = new EncodeHintType("PDF417_COMPACT", 3);
        PDF417_COMPACT = encodeHintType4;
        EncodeHintType encodeHintType5 = new EncodeHintType("PDF417_COMPACTION", 4);
        PDF417_COMPACTION = encodeHintType5;
        EncodeHintType encodeHintType6 = new EncodeHintType("PDF417_DIMENSIONS", 5);
        PDF417_DIMENSIONS = encodeHintType6;
        f5074a = new EncodeHintType[]{encodeHintType, encodeHintType2, encodeHintType3, encodeHintType4, encodeHintType5, encodeHintType6};
    }
}
