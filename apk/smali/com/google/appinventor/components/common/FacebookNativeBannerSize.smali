.class public final enum Lcom/google/appinventor/components/common/FacebookNativeBannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FacebookNativeBannerSize;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdSizeHeight100:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

.field public static final enum AdSizeHeight120:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

.field public static final enum AdSizeHeight50:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/FacebookNativeBannerSize;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    new-instance v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AdSizeHeight50"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight50:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    .line 12
    new-instance v2, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "AdSizeHeight100"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight100:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    .line 13
    new-instance v4, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "AdSizeHeight120"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v4, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->AdSizeHeight120:Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    const/4 v6, 0x3

    .line 10
    new-array v6, v6, [Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    .line 10
    sput-object v6, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->c:[Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->b:Ljava/util/HashMap;

    .line 25
    invoke-static {}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->values()[Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 26
    sget-object v5, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/FacebookNativeBannerSize;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FacebookNativeBannerSize;
    .locals 1

    .line 10
    const-class v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FacebookNativeBannerSize;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->c:[Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FacebookNativeBannerSize;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FacebookNativeBannerSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
