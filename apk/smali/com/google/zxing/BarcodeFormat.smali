.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODABAR:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_93:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum MAXICODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_14:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_E:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

.field public static final synthetic a:[Lcom/google/zxing/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v0, 0x0

    .line 27
    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    .line 24
    const-string v2, "AZTEC"

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 30
    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    const/16 v19, 0x0

    .line 24
    const-string v0, "CODABAR"

    invoke-direct {v2, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 33
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const/16 v20, 0x1

    .line 24
    const-string v15, "CODE_39"

    invoke-direct {v0, v15, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 36
    new-instance v15, Lcom/google/zxing/BarcodeFormat;

    const/16 v21, 0x2

    .line 24
    const-string v14, "CODE_93"

    invoke-direct {v15, v14, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v15, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 39
    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    const/16 v22, 0x3

    .line 24
    const-string v13, "CODE_128"

    invoke-direct {v14, v13, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v14, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 42
    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    const/16 v23, 0x4

    .line 24
    const-string v12, "DATA_MATRIX"

    invoke-direct {v13, v12, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v13, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 45
    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    const/16 v24, 0x5

    .line 24
    const-string v11, "EAN_8"

    invoke-direct {v12, v11, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v12, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 48
    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    const/16 v25, 0x6

    .line 24
    const-string v10, "EAN_13"

    invoke-direct {v11, v10, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v11, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 51
    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    const/16 v26, 0x7

    .line 24
    const-string v9, "ITF"

    invoke-direct {v10, v9, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v10, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 54
    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    const/16 v27, 0x8

    .line 24
    const-string v8, "MAXICODE"

    invoke-direct {v9, v8, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v9, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    .line 57
    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    const/16 v28, 0x9

    .line 24
    const-string v7, "PDF_417"

    invoke-direct {v8, v7, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v8, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 60
    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    const/16 v29, 0xa

    .line 24
    const-string v6, "QR_CODE"

    invoke-direct {v7, v6, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 63
    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    const/16 v30, 0xb

    .line 24
    const-string v5, "RSS_14"

    invoke-direct {v6, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v6, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 66
    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    const/16 v31, 0xc

    .line 24
    const-string v4, "RSS_EXPANDED"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 69
    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    const/16 v32, 0xd

    .line 24
    const-string v3, "UPC_A"

    move-object/from16 v33, v0

    const/16 v0, 0xe

    invoke-direct {v4, v3, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 72
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    .line 24
    const-string v3, "UPC_E"

    move-object/from16 v34, v1

    const/16 v1, 0xf

    invoke-direct {v0, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 75
    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    .line 24
    const-string v3, "UPC_EAN_EXTENSION"

    move-object/from16 v35, v0

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    const/16 v0, 0x11

    .line 24
    new-array v0, v0, [Lcom/google/zxing/BarcodeFormat;

    aput-object v34, v0, v19

    aput-object v2, v0, v20

    aput-object v33, v0, v21

    aput-object v15, v0, v22

    aput-object v14, v0, v23

    aput-object v13, v0, v24

    aput-object v12, v0, v25

    aput-object v11, v0, v26

    aput-object v10, v0, v27

    aput-object v9, v0, v28

    aput-object v8, v0, v29

    aput-object v7, v0, v30

    aput-object v6, v0, v31

    aput-object v5, v0, v32

    const/16 v18, 0xe

    aput-object v4, v0, v18

    const/16 v17, 0xf

    aput-object v35, v0, v17

    const/16 v16, 0x10

    aput-object v1, v0, v16

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->a:[Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 24
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->a:[Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
