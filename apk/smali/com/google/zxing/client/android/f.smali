.class final enum Lcom/google/zxing/client/android/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/android/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/client/android/f;

.field public static final enum b:Lcom/google/zxing/client/android/f;

.field public static final enum c:Lcom/google/zxing/client/android/f;

.field public static final synthetic d:[Lcom/google/zxing/client/android/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v4, Lcom/google/zxing/client/android/f;

    .line 19
    const-string v5, "NATIVE_APP_INTENT"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v4, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/f;

    .line 22
    new-instance v5, Lcom/google/zxing/client/android/f;

    .line 19
    const-string v6, "PRODUCT_SEARCH_LINK"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    new-instance v6, Lcom/google/zxing/client/android/f;

    .line 19
    const-string v7, "ZXING_LINK"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v6, Lcom/google/zxing/client/android/f;->b:Lcom/google/zxing/client/android/f;

    .line 24
    new-instance v7, Lcom/google/zxing/client/android/f;

    .line 19
    const-string v8, "NONE"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v7, Lcom/google/zxing/client/android/f;->c:Lcom/google/zxing/client/android/f;

    const/4 v8, 0x4

    .line 19
    new-array v8, v8, [Lcom/google/zxing/client/android/f;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    .line 19
    sput-object v8, Lcom/google/zxing/client/android/f;->d:[Lcom/google/zxing/client/android/f;

    return-void
.end method

.method public static values()[Lcom/google/zxing/client/android/f;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/zxing/client/android/f;->d:[Lcom/google/zxing/client/android/f;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/f;

    return-object v0
.end method
