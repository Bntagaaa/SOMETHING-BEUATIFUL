.class public final enum Lcom/google/appinventor/components/common/HorizontalAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/HorizontalAlignment;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field public static final enum Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field public static final enum Right:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/HorizontalAlignment;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v1, "Left"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 17
    new-instance v1, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v4, "Center"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 18
    new-instance v4, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v6, "Right"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/appinventor/components/common/HorizontalAlignment;->Right:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 15
    new-array v5, v5, [Lcom/google/appinventor/components/common/HorizontalAlignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 15
    sput-object v5, Lcom/google/appinventor/components/common/HorizontalAlignment;->c:[Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->b:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/HorizontalAlignment;->values()[Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 34
    sget-object v5, Lcom/google/appinventor/components/common/HorizontalAlignment;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/appinventor/components/common/HorizontalAlignment;->a:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->c:[Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/appinventor/components/common/HorizontalAlignment;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
