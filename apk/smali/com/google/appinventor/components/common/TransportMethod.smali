.class public final enum Lcom/google/appinventor/components/common/TransportMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/TransportMethod;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Car:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Foot:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/TransportMethod;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "Foot"

    const/4 v2, 0x0

    const-string v3, "foot-walking"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "driving-car"

    const-string v4, "Car"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v4, "cycling-regular"

    const-string v6, "Bicycle"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    .line 18
    new-instance v4, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v6, "wheelchair"

    const-string v8, "Wheelchair"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    const/4 v6, 0x4

    .line 14
    new-array v6, v6, [Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    .line 14
    sput-object v6, Lcom/google/appinventor/components/common/TransportMethod;->c:[Lcom/google/appinventor/components/common/TransportMethod;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->b:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/TransportMethod;->values()[Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/TransportMethod;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/TransportMethod;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->c:[Lcom/google/appinventor/components/common/TransportMethod;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/TransportMethod;->a:Ljava/lang/String;

    return-object v0
.end method
