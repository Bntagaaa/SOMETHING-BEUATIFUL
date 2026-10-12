.class public final enum Lcom/google/appinventor/components/common/MobPubBannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/MobPubBannerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HeightFill:Lcom/google/appinventor/components/common/MobPubBannerSize;

.field public static final enum Height_250:Lcom/google/appinventor/components/common/MobPubBannerSize;

.field public static final enum Height_280:Lcom/google/appinventor/components/common/MobPubBannerSize;

.field public static final enum Height_50:Lcom/google/appinventor/components/common/MobPubBannerSize;

.field public static final enum Height_90:Lcom/google/appinventor/components/common/MobPubBannerSize;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/MobPubBannerSize;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HeightFill"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/MobPubBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/MobPubBannerSize;->HeightFill:Lcom/google/appinventor/components/common/MobPubBannerSize;

    .line 8
    new-instance v1, Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Height_50"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/appinventor/components/common/MobPubBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lcom/google/appinventor/components/common/MobPubBannerSize;->Height_50:Lcom/google/appinventor/components/common/MobPubBannerSize;

    .line 9
    new-instance v2, Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Height_90"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/appinventor/components/common/MobPubBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/MobPubBannerSize;->Height_90:Lcom/google/appinventor/components/common/MobPubBannerSize;

    .line 10
    new-instance v4, Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/16 v6, 0xfa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "Height_250"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/appinventor/components/common/MobPubBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v4, Lcom/google/appinventor/components/common/MobPubBannerSize;->Height_250:Lcom/google/appinventor/components/common/MobPubBannerSize;

    .line 11
    new-instance v6, Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/16 v8, 0x118

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "Height_280"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/appinventor/components/common/MobPubBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v6, Lcom/google/appinventor/components/common/MobPubBannerSize;->Height_280:Lcom/google/appinventor/components/common/MobPubBannerSize;

    const/4 v8, 0x5

    .line 6
    new-array v8, v8, [Lcom/google/appinventor/components/common/MobPubBannerSize;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 6
    sput-object v8, Lcom/google/appinventor/components/common/MobPubBannerSize;->c:[Lcom/google/appinventor/components/common/MobPubBannerSize;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/MobPubBannerSize;->b:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Lcom/google/appinventor/components/common/MobPubBannerSize;->values()[Lcom/google/appinventor/components/common/MobPubBannerSize;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 23
    sget-object v4, Lcom/google/appinventor/components/common/MobPubBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/MobPubBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/google/appinventor/components/common/MobPubBannerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MobPubBannerSize;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/appinventor/components/common/MobPubBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/MobPubBannerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/MobPubBannerSize;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/MobPubBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/MobPubBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/MobPubBannerSize;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/MobPubBannerSize;->c:[Lcom/google/appinventor/components/common/MobPubBannerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/MobPubBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/MobPubBannerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/common/MobPubBannerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/MobPubBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
