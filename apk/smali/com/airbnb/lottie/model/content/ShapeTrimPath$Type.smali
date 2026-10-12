.class public final enum Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeTrimPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final synthetic a:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    new-instance v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 11
    const-string v3, "SIMULTANEOUSLY"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    sput-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 13
    new-instance v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 11
    const-string v4, "INDIVIDUALLY"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    const/4 v4, 0x2

    .line 11
    new-array v4, v4, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->a:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-void
.end method

.method public static forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 20
    sget-object p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    .line 0
    invoke-static {p0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    sget-object p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 11
    const-class v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 11
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->a:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method
