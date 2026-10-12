.class public final enum Lcom/google/zxing/client/android/HttpHelper$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/android/HttpHelper$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

.field public static final enum JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

.field public static final enum TEXT:Lcom/google/zxing/client/android/HttpHelper$ContentType;

.field public static final synthetic a:[Lcom/google/zxing/client/android/HttpHelper$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v3, Lcom/google/zxing/client/android/HttpHelper$ContentType;

    .line 49
    const-string v4, "HTML"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v3, Lcom/google/zxing/client/android/HttpHelper$ContentType;->HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    .line 53
    new-instance v4, Lcom/google/zxing/client/android/HttpHelper$ContentType;

    .line 49
    const-string v5, "JSON"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v4, Lcom/google/zxing/client/android/HttpHelper$ContentType;->JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    .line 55
    new-instance v5, Lcom/google/zxing/client/android/HttpHelper$ContentType;

    .line 49
    const-string v6, "TEXT"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v5, Lcom/google/zxing/client/android/HttpHelper$ContentType;->TEXT:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    const/4 v6, 0x3

    .line 49
    new-array v6, v6, [Lcom/google/zxing/client/android/HttpHelper$ContentType;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    .line 49
    sput-object v6, Lcom/google/zxing/client/android/HttpHelper$ContentType;->a:[Lcom/google/zxing/client/android/HttpHelper$ContentType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .locals 1

    .line 49
    const-class v0, Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/android/HttpHelper$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/zxing/client/android/HttpHelper$ContentType;->a:[Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/HttpHelper$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/HttpHelper$ContentType;

    return-object v0
.end method
