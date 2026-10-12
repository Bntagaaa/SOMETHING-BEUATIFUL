.class public final enum Lcom/google/appinventor/components/common/StrokeStyle;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/StrokeStyle;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final enum Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final enum Solid:Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/StrokeStyle;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v1, "Solid"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->Solid:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 13
    new-instance v1, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v4, "Dashed"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/StrokeStyle;->Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 14
    new-instance v4, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v6, "Dotted"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/appinventor/components/common/StrokeStyle;->Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 11
    new-array v6, v7, [Lcom/google/appinventor/components/common/StrokeStyle;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 11
    sput-object v6, Lcom/google/appinventor/components/common/StrokeStyle;->c:[Lcom/google/appinventor/components/common/StrokeStyle;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->b:Ljava/util/HashMap;

    .line 19
    invoke-static {}, Lcom/google/appinventor/components/common/StrokeStyle;->values()[Lcom/google/appinventor/components/common/StrokeStyle;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 20
    sget-object v5, Lcom/google/appinventor/components/common/StrokeStyle;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/StrokeStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/StrokeStyle;->a:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object p0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1

    .line 11
    const-class v0, Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->c:[Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/StrokeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/StrokeStyle;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/StrokeStyle;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/StrokeStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
