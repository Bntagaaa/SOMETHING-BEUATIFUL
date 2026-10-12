.class final enum Lcom/google/zxing/aztec/decoder/Decoder$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/decoder/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/aztec/decoder/Decoder$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final enum b:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final enum c:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final enum d:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final enum e:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final enum f:Lcom/google/zxing/aztec/decoder/Decoder$b;

.field public static final synthetic g:[Lcom/google/zxing/aztec/decoder/Decoder$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 36
    new-instance v6, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v7, "UPPER"

    invoke-direct {v6, v7, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v6, Lcom/google/zxing/aztec/decoder/Decoder$b;->a:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 37
    new-instance v7, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v8, "LOWER"

    invoke-direct {v7, v8, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v7, Lcom/google/zxing/aztec/decoder/Decoder$b;->b:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 38
    new-instance v8, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v9, "MIXED"

    invoke-direct {v8, v9, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v8, Lcom/google/zxing/aztec/decoder/Decoder$b;->c:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 39
    new-instance v9, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v10, "DIGIT"

    invoke-direct {v9, v10, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v9, Lcom/google/zxing/aztec/decoder/Decoder$b;->d:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 40
    new-instance v10, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v11, "PUNCT"

    invoke-direct {v10, v11, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v10, Lcom/google/zxing/aztec/decoder/Decoder$b;->e:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 41
    new-instance v11, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 35
    const-string v12, "BINARY"

    invoke-direct {v11, v12, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v11, Lcom/google/zxing/aztec/decoder/Decoder$b;->f:Lcom/google/zxing/aztec/decoder/Decoder$b;

    const/4 v12, 0x6

    .line 35
    new-array v12, v12, [Lcom/google/zxing/aztec/decoder/Decoder$b;

    aput-object v6, v12, v5

    aput-object v7, v12, v4

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    sput-object v12, Lcom/google/zxing/aztec/decoder/Decoder$b;->g:[Lcom/google/zxing/aztec/decoder/Decoder$b;

    return-void
.end method

.method public static values()[Lcom/google/zxing/aztec/decoder/Decoder$b;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$b;->g:[Lcom/google/zxing/aztec/decoder/Decoder$b;

    invoke-virtual {v0}, [Lcom/google/zxing/aztec/decoder/Decoder$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/aztec/decoder/Decoder$b;

    return-object v0
.end method
