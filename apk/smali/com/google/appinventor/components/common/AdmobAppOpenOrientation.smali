.class public final enum Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Landscape:Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

.field public static final enum Portrait:Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Portrait"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->Portrait:Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    .line 11
    new-instance v2, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Landscape"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->Landscape:Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    const/4 v4, 0x2

    .line 9
    new-array v4, v4, [Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    .line 9
    sput-object v4, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->c:[Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->b:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Lcom/google/appinventor/components/common/AdmobAdSize;->values()[Lcom/google/appinventor/components/common/AdmobAdSize;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 23
    sget-object v5, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/AdmobAdSize;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/AdmobAdSize;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/AdmobAdSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;
    .locals 1

    .line 9
    const-class v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->c:[Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
