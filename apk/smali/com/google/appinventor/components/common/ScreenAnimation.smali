.class public final enum Lcom/google/appinventor/components/common/ScreenAnimation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenAnimation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum None:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/ScreenAnimation;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 17
    new-instance v1, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "fade"

    const-string v4, "Fade"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 18
    new-instance v3, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v4, "zoom"

    const-string v6, "Zoom"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 19
    new-instance v4, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v6, "slidehorizontal"

    const-string v8, "SlideHorizontal"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 20
    new-instance v6, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v8, "slidevertical"

    const-string v10, "SlideVertical"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 21
    new-instance v8, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v10, "none"

    const-string v12, "None"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    const/4 v10, 0x6

    .line 15
    new-array v10, v10, [Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    .line 15
    sput-object v10, Lcom/google/appinventor/components/common/ScreenAnimation;->c:[Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->b:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->c:[Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->a:Ljava/lang/String;

    return-object v0
.end method
