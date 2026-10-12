.class public final enum Lcom/google/appinventor/components/common/ChartboostBannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ChartboostBannerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Leaderboard:Lcom/google/appinventor/components/common/ChartboostBannerSize;

.field public static final enum Medium:Lcom/google/appinventor/components/common/ChartboostBannerSize;

.field public static final enum Standard:Lcom/google/appinventor/components/common/ChartboostBannerSize;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/ChartboostBannerSize;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Standard"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/ChartboostBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->Standard:Lcom/google/appinventor/components/common/ChartboostBannerSize;

    .line 9
    new-instance v2, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Medium"

    invoke-direct {v2, v6, v1, v5}, Lcom/google/appinventor/components/common/ChartboostBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/ChartboostBannerSize;->Medium:Lcom/google/appinventor/components/common/ChartboostBannerSize;

    .line 10
    new-instance v5, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Leaderboard"

    invoke-direct {v5, v8, v3, v7}, Lcom/google/appinventor/components/common/ChartboostBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lcom/google/appinventor/components/common/ChartboostBannerSize;->Leaderboard:Lcom/google/appinventor/components/common/ChartboostBannerSize;

    .line 7
    new-array v6, v6, [Lcom/google/appinventor/components/common/ChartboostBannerSize;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    .line 7
    sput-object v6, Lcom/google/appinventor/components/common/ChartboostBannerSize;->c:[Lcom/google/appinventor/components/common/ChartboostBannerSize;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->b:Ljava/util/HashMap;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/ChartboostBannerSize;->values()[Lcom/google/appinventor/components/common/ChartboostBannerSize;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v0, v4

    .line 22
    sget-object v5, Lcom/google/appinventor/components/common/ChartboostBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ChartboostBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ChartboostBannerSize;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ChartboostBannerSize;
    .locals 1

    .line 7
    const-class v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ChartboostBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ChartboostBannerSize;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->c:[Lcom/google/appinventor/components/common/ChartboostBannerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ChartboostBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ChartboostBannerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/ChartboostBannerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ChartboostBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
