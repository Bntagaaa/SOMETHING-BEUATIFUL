.class public final Lkotlin/ranges/IntProgressionIterator;
.super Lkotlin/collections/IntIterator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/ranges/IntProgressionIterator;",
        "Lkotlin/collections/IntIterator;",
        "",
        "first",
        "last",
        "step",
        "<init>",
        "(III)V",
        "",
        "hasNext",
        "()Z",
        "nextInt",
        "()I",
        "a",
        "I",
        "getStep",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    iput p3, p0, Lkotlin/ranges/IntProgressionIterator;->a:I

    .line 40
    iput p2, p0, Lkotlin/ranges/IntProgressionIterator;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->c:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    .line 42
    :goto_2
    iput p1, p0, Lkotlin/ranges/IntProgressionIterator;->d:I

    return-void
.end method


# virtual methods
.method public final getStep()I
    .locals 1

    .line 39
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->a:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->c:Z

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 47
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->d:I

    .line 48
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->b:I

    if-ne v0, v1, :cond_1

    .line 49
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->c:Z

    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 53
    :cond_1
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/ranges/IntProgressionIterator;->d:I

    return v0
.end method
