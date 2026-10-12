.class final enum Lcom/google/zxing/pdf417/decoder/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/decoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/pdf417/decoder/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final enum b:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final enum c:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final enum d:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final enum e:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final enum f:Lcom/google/zxing/pdf417/decoder/b$b;

.field public static final synthetic g:[Lcom/google/zxing/pdf417/decoder/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v6, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v7, "ALPHA"

    invoke-direct {v6, v7, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v6, Lcom/google/zxing/pdf417/decoder/b$b;->a:Lcom/google/zxing/pdf417/decoder/b$b;

    .line 33
    new-instance v7, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v8, "LOWER"

    invoke-direct {v7, v8, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v7, Lcom/google/zxing/pdf417/decoder/b$b;->b:Lcom/google/zxing/pdf417/decoder/b$b;

    .line 34
    new-instance v8, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v9, "MIXED"

    invoke-direct {v8, v9, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v8, Lcom/google/zxing/pdf417/decoder/b$b;->c:Lcom/google/zxing/pdf417/decoder/b$b;

    .line 35
    new-instance v9, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v10, "PUNCT"

    invoke-direct {v9, v10, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v9, Lcom/google/zxing/pdf417/decoder/b$b;->d:Lcom/google/zxing/pdf417/decoder/b$b;

    .line 36
    new-instance v10, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v11, "ALPHA_SHIFT"

    invoke-direct {v10, v11, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v10, Lcom/google/zxing/pdf417/decoder/b$b;->e:Lcom/google/zxing/pdf417/decoder/b$b;

    .line 37
    new-instance v11, Lcom/google/zxing/pdf417/decoder/b$b;

    .line 31
    const-string v12, "PUNCT_SHIFT"

    invoke-direct {v11, v12, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v11, Lcom/google/zxing/pdf417/decoder/b$b;->f:Lcom/google/zxing/pdf417/decoder/b$b;

    const/4 v12, 0x6

    .line 31
    new-array v12, v12, [Lcom/google/zxing/pdf417/decoder/b$b;

    aput-object v6, v12, v5

    aput-object v7, v12, v4

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    sput-object v12, Lcom/google/zxing/pdf417/decoder/b$b;->g:[Lcom/google/zxing/pdf417/decoder/b$b;

    return-void
.end method

.method public static values()[Lcom/google/zxing/pdf417/decoder/b$b;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/zxing/pdf417/decoder/b$b;->g:[Lcom/google/zxing/pdf417/decoder/b$b;

    invoke-virtual {v0}, [Lcom/google/zxing/pdf417/decoder/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/pdf417/decoder/b$b;

    return-object v0
.end method
