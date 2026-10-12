.class public final enum Lcom/airbnb/lottie/model/content/Mask$MaskMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/Mask$MaskMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final synthetic a:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    const-string v5, "MASK_MODE_ADD"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 9
    new-instance v5, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    const-string v6, "MASK_MODE_SUBTRACT"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v5, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 10
    new-instance v6, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    const-string v7, "MASK_MODE_INTERSECT"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v6, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 11
    new-instance v7, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    const-string v8, "MASK_MODE_NONE"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v7, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const/4 v8, 0x4

    .line 7
    new-array v8, v8, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->a:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .line 7
    const-class v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->a:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
