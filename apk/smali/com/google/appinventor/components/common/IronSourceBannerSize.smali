.class public final enum Lcom/google/appinventor/components/common/IronSourceBannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/IronSourceBannerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LargeBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

.field public static final enum RectangleBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

.field public static final enum SmartBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

.field public static final enum StandardBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/IronSourceBannerSize;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StandardBanner"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/appinventor/components/common/IronSourceBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->StandardBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    .line 8
    new-instance v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "LargeBanner"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/appinventor/components/common/IronSourceBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/IronSourceBannerSize;->LargeBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    .line 9
    new-instance v4, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "RectangleBanner"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/appinventor/components/common/IronSourceBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v4, Lcom/google/appinventor/components/common/IronSourceBannerSize;->RectangleBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    .line 10
    new-instance v6, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "SmartBanner"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/appinventor/components/common/IronSourceBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v6, Lcom/google/appinventor/components/common/IronSourceBannerSize;->SmartBanner:Lcom/google/appinventor/components/common/IronSourceBannerSize;

    const/4 v8, 0x4

    .line 6
    new-array v8, v8, [Lcom/google/appinventor/components/common/IronSourceBannerSize;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 6
    sput-object v8, Lcom/google/appinventor/components/common/IronSourceBannerSize;->c:[Lcom/google/appinventor/components/common/IronSourceBannerSize;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->b:Ljava/util/HashMap;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->values()[Lcom/google/appinventor/components/common/IronSourceBannerSize;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 22
    sget-object v5, Lcom/google/appinventor/components/common/IronSourceBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/IronSourceBannerSize;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/IronSourceBannerSize;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/IronSourceBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/IronSourceBannerSize;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->c:[Lcom/google/appinventor/components/common/IronSourceBannerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/IronSourceBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/IronSourceBannerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/IronSourceBannerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/IronSourceBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
