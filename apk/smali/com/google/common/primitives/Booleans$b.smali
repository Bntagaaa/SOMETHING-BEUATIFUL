.class final enum Lcom/google/common/primitives/Booleans$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Booleans$b;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/primitives/Booleans$b;

.field public static final enum d:Lcom/google/common/primitives/Booleans$b;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/google/common/primitives/Booleans$b;

    const-string v1, "Booleans.trueFirst()"

    const-string v2, "TRUE_FIRST"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/google/common/primitives/Booleans$b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/primitives/Booleans$b;->c:Lcom/google/common/primitives/Booleans$b;

    .line 51
    new-instance v0, Lcom/google/common/primitives/Booleans$b;

    const/4 v1, -0x1

    const-string v2, "Booleans.falseFirst()"

    const-string v3, "FALSE_FIRST"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/google/common/primitives/Booleans$b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/primitives/Booleans$b;->d:Lcom/google/common/primitives/Booleans$b;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p2, p0, Lcom/google/common/primitives/Booleans$b;->a:I

    .line 58
    iput-object p4, p0, Lcom/google/common/primitives/Booleans$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 2

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/primitives/Booleans$b;->a:I

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$b;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$b;->b:Ljava/lang/String;

    return-object v0
.end method
