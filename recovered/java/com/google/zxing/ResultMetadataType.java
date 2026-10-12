package com.google.zxing;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ResultMetadataType {
    public static final ResultMetadataType BYTE_SEGMENTS;
    public static final ResultMetadataType ERROR_CORRECTION_LEVEL;
    public static final ResultMetadataType ISSUE_NUMBER;
    public static final ResultMetadataType ORIENTATION;
    public static final ResultMetadataType OTHER;
    public static final ResultMetadataType POSSIBLE_COUNTRY;
    public static final ResultMetadataType SUGGESTED_PRICE;
    public static final ResultMetadataType UPC_EAN_EXTENSION;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ResultMetadataType[] f5086a;

    public static ResultMetadataType valueOf(String str) {
        return (ResultMetadataType) Enum.valueOf(ResultMetadataType.class, str);
    }

    public static ResultMetadataType[] values() {
        return (ResultMetadataType[]) f5086a.clone();
    }

    static {
        ResultMetadataType resultMetadataType = new ResultMetadataType("OTHER", 0);
        OTHER = resultMetadataType;
        ResultMetadataType resultMetadataType2 = new ResultMetadataType("ORIENTATION", 1);
        ORIENTATION = resultMetadataType2;
        ResultMetadataType resultMetadataType3 = new ResultMetadataType("BYTE_SEGMENTS", 2);
        BYTE_SEGMENTS = resultMetadataType3;
        ResultMetadataType resultMetadataType4 = new ResultMetadataType("ERROR_CORRECTION_LEVEL", 3);
        ERROR_CORRECTION_LEVEL = resultMetadataType4;
        ResultMetadataType resultMetadataType5 = new ResultMetadataType("ISSUE_NUMBER", 4);
        ISSUE_NUMBER = resultMetadataType5;
        ResultMetadataType resultMetadataType6 = new ResultMetadataType("SUGGESTED_PRICE", 5);
        SUGGESTED_PRICE = resultMetadataType6;
        ResultMetadataType resultMetadataType7 = new ResultMetadataType("POSSIBLE_COUNTRY", 6);
        POSSIBLE_COUNTRY = resultMetadataType7;
        ResultMetadataType resultMetadataType8 = new ResultMetadataType("UPC_EAN_EXTENSION", 7);
        UPC_EAN_EXTENSION = resultMetadataType8;
        f5086a = new ResultMetadataType[]{resultMetadataType, resultMetadataType2, resultMetadataType3, resultMetadataType4, resultMetadataType5, resultMetadataType6, resultMetadataType7, resultMetadataType8};
    }
}
