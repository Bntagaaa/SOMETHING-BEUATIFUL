.class public final enum Lcom/google/appinventor/components/common/MapType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/MapType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Aerial:Lcom/google/appinventor/components/common/MapType;

.field public static final enum Road:Lcom/google/appinventor/components/common/MapType;

.field public static final enum Terrain:Lcom/google/appinventor/components/common/MapType;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/MapType;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/MapType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Road"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/MapType;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Aerial"

    invoke-direct {v2, v6, v1, v5}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapType;->Aerial:Lcom/google/appinventor/components/common/MapType;

    .line 17
    new-instance v5, Lcom/google/appinventor/components/common/MapType;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Terrain"

    invoke-direct {v5, v8, v3, v7}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lcom/google/appinventor/components/common/MapType;->Terrain:Lcom/google/appinventor/components/common/MapType;

    .line 14
    new-array v6, v6, [Lcom/google/appinventor/components/common/MapType;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    .line 14
    sput-object v6, Lcom/google/appinventor/components/common/MapType;->c:[Lcom/google/appinventor/components/common/MapType;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/MapType;->b:Ljava/util/HashMap;

    .line 32
    invoke-static {}, Lcom/google/appinventor/components/common/MapType;->values()[Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v0, v4

    .line 33
    sget-object v5, Lcom/google/appinventor/components/common/MapType;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/common/MapType;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/MapType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/MapType;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->c:[Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/appinventor/components/common/MapType;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
