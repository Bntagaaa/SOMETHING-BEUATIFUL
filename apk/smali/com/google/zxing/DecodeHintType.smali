.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;

.field public static final synthetic a:[Lcom/google/zxing/DecodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 33
    new-instance v8, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v9, "OTHER"

    invoke-direct {v8, v9, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v8, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    .line 39
    new-instance v9, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v10, "PURE_BARCODE"

    invoke-direct {v9, v10, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v9, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    .line 45
    new-instance v10, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v11, "POSSIBLE_FORMATS"

    invoke-direct {v10, v11, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v10, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 51
    new-instance v11, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v12, "TRY_HARDER"

    invoke-direct {v11, v12, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v11, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 56
    new-instance v12, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v13, "CHARACTER_SET"

    invoke-direct {v12, v13, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v12, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 61
    new-instance v13, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v14, "ALLOWED_LENGTHS"

    invoke-direct {v13, v14, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v13, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    .line 66
    new-instance v14, Lcom/google/zxing/DecodeHintType;

    .line 28
    const-string v15, "ASSUME_CODE_39_CHECK_DIGIT"

    invoke-direct {v14, v15, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v14, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 72
    new-instance v15, Lcom/google/zxing/DecodeHintType;

    const/16 v16, 0x6

    .line 28
    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    invoke-direct {v15, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v15, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    const/16 v1, 0x8

    .line 28
    new-array v1, v1, [Lcom/google/zxing/DecodeHintType;

    aput-object v8, v1, v7

    aput-object v9, v1, v6

    aput-object v10, v1, v5

    aput-object v11, v1, v4

    aput-object v12, v1, v3

    aput-object v13, v1, v2

    aput-object v14, v1, v16

    aput-object v15, v1, v0

    sput-object v1, Lcom/google/zxing/DecodeHintType;->a:[Lcom/google/zxing/DecodeHintType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 28
    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/DecodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/zxing/DecodeHintType;->a:[Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method
