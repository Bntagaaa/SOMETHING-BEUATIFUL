package com.google.zxing;

import com.google.zxing.client.android.Intents;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DecodeHintType {
    public static final DecodeHintType ALLOWED_LENGTHS;
    public static final DecodeHintType ASSUME_CODE_39_CHECK_DIGIT;
    public static final DecodeHintType CHARACTER_SET;
    public static final DecodeHintType NEED_RESULT_POINT_CALLBACK;
    public static final DecodeHintType OTHER;
    public static final DecodeHintType POSSIBLE_FORMATS;
    public static final DecodeHintType PURE_BARCODE;
    public static final DecodeHintType TRY_HARDER;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ DecodeHintType[] f5073a;

    public static DecodeHintType valueOf(String str) {
        return (DecodeHintType) Enum.valueOf(DecodeHintType.class, str);
    }

    public static DecodeHintType[] values() {
        return (DecodeHintType[]) f5073a.clone();
    }

    static {
        DecodeHintType decodeHintType = new DecodeHintType("OTHER", 0);
        OTHER = decodeHintType;
        DecodeHintType decodeHintType2 = new DecodeHintType("PURE_BARCODE", 1);
        PURE_BARCODE = decodeHintType2;
        DecodeHintType decodeHintType3 = new DecodeHintType("POSSIBLE_FORMATS", 2);
        POSSIBLE_FORMATS = decodeHintType3;
        DecodeHintType decodeHintType4 = new DecodeHintType("TRY_HARDER", 3);
        TRY_HARDER = decodeHintType4;
        DecodeHintType decodeHintType5 = new DecodeHintType(Intents.Scan.CHARACTER_SET, 4);
        CHARACTER_SET = decodeHintType5;
        DecodeHintType decodeHintType6 = new DecodeHintType("ALLOWED_LENGTHS", 5);
        ALLOWED_LENGTHS = decodeHintType6;
        DecodeHintType decodeHintType7 = new DecodeHintType("ASSUME_CODE_39_CHECK_DIGIT", 6);
        ASSUME_CODE_39_CHECK_DIGIT = decodeHintType7;
        DecodeHintType decodeHintType8 = new DecodeHintType("NEED_RESULT_POINT_CALLBACK", 7);
        NEED_RESULT_POINT_CALLBACK = decodeHintType8;
        f5073a = new DecodeHintType[]{decodeHintType, decodeHintType2, decodeHintType3, decodeHintType4, decodeHintType5, decodeHintType6, decodeHintType7, decodeHintType8};
    }
}
