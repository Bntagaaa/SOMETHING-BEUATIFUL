.class final Lcom/google/common/collect/c3;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/google/common/collect/c3;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    const/4 p1, 0x0

    .line 451
    iput p1, p0, Lcom/google/common/collect/c3;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 455
    iget v0, p0, Lcom/google/common/collect/c3;->a:I

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/google/common/collect/c3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget v0, p0, Lcom/google/common/collect/c3;->a:I

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 464
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 465
    iput v0, p0, Lcom/google/common/collect/c3;->a:I

    return-object v2

    .line 461
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
