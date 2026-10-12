.class public final enum Lcom/google/appinventor/components/common/LinearProgressBarAnimations;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/LinearProgressBarAnimations;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Contiguous:Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

.field public static final enum Disjoint:Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/LinearProgressBarAnimations;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Disjoint"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->Disjoint:Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    .line 9
    new-instance v2, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Contiguous"

    invoke-direct {v2, v5, v1, v3}, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->Contiguous:Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    .line 7
    sput-object v3, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->c:[Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->b:Ljava/util/HashMap;

    .line 20
    invoke-static {}, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->values()[Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v0, v4

    .line 21
    sget-object v5, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LinearProgressBarAnimations;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LinearProgressBarAnimations;
    .locals 1

    .line 7
    const-class v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LinearProgressBarAnimations;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->c:[Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LinearProgressBarAnimations;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LinearProgressBarAnimations;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
