.class public final enum Lcom/airbnb/lottie/model/layer/Layer$LayerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum NULL:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum SHAPE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum SOLID:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum TEXT:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final synthetic a:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;


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

    .line 20
    new-instance v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v8, "PRE_COMP"

    invoke-direct {v7, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 21
    new-instance v8, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v9, "SOLID"

    invoke-direct {v8, v9, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v8, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->SOLID:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 22
    new-instance v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v10, "IMAGE"

    invoke-direct {v9, v10, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 23
    new-instance v10, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v11, "NULL"

    invoke-direct {v10, v11, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v10, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->NULL:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 24
    new-instance v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v12, "SHAPE"

    invoke-direct {v11, v12, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->SHAPE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 25
    new-instance v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v13, "TEXT"

    invoke-direct {v12, v13, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->TEXT:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 26
    new-instance v13, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 19
    const-string v14, "UNKNOWN"

    invoke-direct {v13, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v13, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const/4 v14, 0x7

    .line 19
    new-array v14, v14, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    aput-object v7, v14, v6

    aput-object v8, v14, v5

    aput-object v9, v14, v4

    aput-object v10, v14, v3

    aput-object v11, v14, v2

    aput-object v12, v14, v1

    aput-object v13, v14, v0

    sput-object v14, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->a:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .line 19
    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .line 19
    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->a:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method
