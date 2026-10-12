.class public final enum Lcom/airbnb/lottie/model/layer/Layer$MatteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum LUMA:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum LUMA_INVERTED:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final synthetic a:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v7, "NONE"

    invoke-direct {v6, v7, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 31
    new-instance v7, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v8, "ADD"

    invoke-direct {v7, v8, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v7, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ADD:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 32
    new-instance v8, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v9, "INVERT"

    invoke-direct {v8, v9, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v8, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 33
    new-instance v9, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v10, "LUMA"

    invoke-direct {v9, v10, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v9, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->LUMA:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 34
    new-instance v10, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v11, "LUMA_INVERTED"

    invoke-direct {v10, v11, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v10, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->LUMA_INVERTED:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 35
    new-instance v11, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 29
    const-string v12, "UNKNOWN"

    invoke-direct {v11, v12, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v11, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/4 v12, 0x6

    .line 29
    new-array v12, v12, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    aput-object v6, v12, v5

    aput-object v7, v12, v4

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    sput-object v12, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->a:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    .line 29
    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    .line 29
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->a:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method
