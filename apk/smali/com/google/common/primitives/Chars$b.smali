.class final enum Lcom/google/common/primitives/Chars$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Chars$b;",
        ">;",
        "Ljava/util/Comparator<",
        "[C>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/Chars$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 389
    new-instance v0, Lcom/google/common/primitives/Chars$b;

    .line 388
    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    sput-object v0, Lcom/google/common/primitives/Chars$b;->a:Lcom/google/common/primitives/Chars$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 388
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$b;->compare([C[C)I

    move-result p1

    return p1
.end method

.method public compare([C[C)I
    .locals 4

    .line 393
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 395
    aget-char v2, p1, v1

    aget-char v3, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Chars;->compare(CC)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_1
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 405
    const-string v0, "Chars.lexicographicalComparator()"

    return-object v0
.end method
