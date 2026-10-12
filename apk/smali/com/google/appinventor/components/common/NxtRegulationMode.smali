.class public final enum Lcom/google/appinventor/components/common/NxtRegulationMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtRegulationMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field public static final enum Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/NxtRegulationMode;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 24
    new-instance v1, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v3, "Speed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 26
    new-instance v3, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v5, "Synchronization"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/appinventor/components/common/NxtRegulationMode;->Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v5, 0x3

    .line 22
    new-array v5, v5, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 22
    sput-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->c:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->b:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/google/appinventor/components/common/NxtRegulationMode;->values()[Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 42
    sget-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->a:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 22
    const-class v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->c:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtRegulationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
