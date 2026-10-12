.class Lcom/google/common/collect/Lists$l;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/google/common/collect/Lists$l;->a:Ljava/lang/Object;

    .line 344
    iput-object p2, p0, Lcom/google/common/collect/Lists$l;->b:Ljava/lang/Object;

    .line 345
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$l;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    add-int/lit8 p1, p1, -0x2

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/Lists$l;->b:Ljava/lang/Object;

    return-object p1

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/Lists$l;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method
