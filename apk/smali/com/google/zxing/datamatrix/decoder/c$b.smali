.class final enum Lcom/google/zxing/datamatrix/decoder/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/decoder/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum b:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum c:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum d:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum e:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum f:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final enum g:Lcom/google/zxing/datamatrix/decoder/c$b;

.field public static final synthetic h:[Lcom/google/zxing/datamatrix/decoder/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 40
    new-instance v7, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v8, "PAD_ENCODE"

    invoke-direct {v7, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->a:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 41
    new-instance v8, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v9, "ASCII_ENCODE"

    invoke-direct {v8, v9, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v8, Lcom/google/zxing/datamatrix/decoder/c$b;->b:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 42
    new-instance v9, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v10, "C40_ENCODE"

    invoke-direct {v9, v10, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v9, Lcom/google/zxing/datamatrix/decoder/c$b;->c:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 43
    new-instance v10, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v11, "TEXT_ENCODE"

    invoke-direct {v10, v11, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v10, Lcom/google/zxing/datamatrix/decoder/c$b;->d:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 44
    new-instance v11, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v12, "ANSIX12_ENCODE"

    invoke-direct {v11, v12, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v11, Lcom/google/zxing/datamatrix/decoder/c$b;->e:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 45
    new-instance v12, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v13, "EDIFACT_ENCODE"

    invoke-direct {v12, v13, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v12, Lcom/google/zxing/datamatrix/decoder/c$b;->f:Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 46
    new-instance v13, Lcom/google/zxing/datamatrix/decoder/c$b;

    .line 39
    const-string v14, "BASE256_ENCODE"

    invoke-direct {v13, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v13, Lcom/google/zxing/datamatrix/decoder/c$b;->g:Lcom/google/zxing/datamatrix/decoder/c$b;

    const/4 v14, 0x7

    .line 39
    new-array v14, v14, [Lcom/google/zxing/datamatrix/decoder/c$b;

    aput-object v7, v14, v6

    aput-object v8, v14, v5

    aput-object v9, v14, v4

    aput-object v10, v14, v3

    aput-object v11, v14, v2

    aput-object v12, v14, v1

    aput-object v13, v14, v0

    sput-object v14, Lcom/google/zxing/datamatrix/decoder/c$b;->h:[Lcom/google/zxing/datamatrix/decoder/c$b;

    return-void
.end method

.method public static values()[Lcom/google/zxing/datamatrix/decoder/c$b;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/c$b;->h:[Lcom/google/zxing/datamatrix/decoder/c$b;

    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/decoder/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/datamatrix/decoder/c$b;

    return-object v0
.end method
