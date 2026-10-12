.class public final Lkotlin/ranges/LongProgressionIterator;
.super Lkotlin/collections/LongIterator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/ranges/LongProgressionIterator;",
        "Lkotlin/collections/LongIterator;",
        "",
        "first",
        "last",
        "step",
        "<init>",
        "(JJJ)V",
        "",
        "hasNext",
        "()Z",
        "nextLong",
        "()J",
        "a",
        "J",
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
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 5

    .line 63
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    iput-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->a:J

    .line 64
    iput-wide p3, p0, Lkotlin/ranges/LongProgressionIterator;->b:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p5, v0

    cmp-long p5, p1, p3

    if-lez v4, :cond_0

    if-gtz p5, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-ltz p5, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->c:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, p3

    .line 66
    :goto_2
    iput-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->d:J

    return-void
.end method


# virtual methods
.method public final getStep()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->a:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lkotlin/ranges/LongProgressionIterator;->c:Z

    return v0
.end method

.method public nextLong()J
    .locals 5

    .line 71
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->d:J

    .line 72
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 73
    iget-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 74
    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->c:Z

    return-wide v0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 77
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->a:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->d:J

    return-wide v0
.end method
