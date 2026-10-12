.class public final enum Lcom/google/appinventor/components/common/NxtMotorMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtMotorMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum Coast:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum On:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum Regulated:Lcom/google/appinventor/components/common/NxtMotorMode;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/NxtMotorMode;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v1, "On"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 22
    new-instance v1, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v4, "Brake"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 23
    new-instance v4, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v6, "Regulated"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->Regulated:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 25
    new-instance v6, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v8, "Coast"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v2}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/appinventor/components/common/NxtMotorMode;->Coast:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 20
    new-array v7, v7, [Lcom/google/appinventor/components/common/NxtMotorMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    .line 20
    sput-object v7, Lcom/google/appinventor/components/common/NxtMotorMode;->c:[Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->b:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Lcom/google/appinventor/components/common/NxtMotorMode;->values()[Lcom/google/appinventor/components/common/NxtMotorMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 41
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/google/appinventor/components/common/NxtMotorMode;->a:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMotorMode;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorMode;
    .locals 1

    .line 20
    const-class v0, Lcom/google/appinventor/components/common/NxtMotorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtMotorMode;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->c:[Lcom/google/appinventor/components/common/NxtMotorMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtMotorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/appinventor/components/common/NxtMotorMode;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
