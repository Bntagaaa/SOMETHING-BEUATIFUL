.class final Lkotlin/ranges/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ULong;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/j;",
        "",
        "Lkotlin/ULong;",
        "first",
        "last",
        "",
        "step",
        "<init>",
        "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "hasNext",
        "()Z",
        "next-s-VKNKU",
        "()J",
        "next",
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

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field public final a:J

.field public b:Z

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide p3, p0, Lkotlin/ranges/j;->a:J

    const-wide/16 v0, 0x0

    const/4 p7, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p5, v0

    xor-long v0, p1, v3

    xor-long/2addr v3, p3

    .line 127
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-lez v5, :cond_0

    if-gtz v0, :cond_1

    :goto_0
    const/4 p7, 0x1

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p7, p0, Lkotlin/ranges/j;->b:Z

    .line 128
    invoke-static {p5, p6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p5

    iput-wide p5, p0, Lkotlin/ranges/j;->c:J

    .line 129
    iget-boolean p5, p0, Lkotlin/ranges/j;->b:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, p3

    :goto_2
    iput-wide p1, p0, Lkotlin/ranges/j;->d:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lkotlin/ranges/j;->b:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lkotlin/ranges/j;->next-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public next-s-VKNKU()J
    .locals 5

    .line 134
    iget-wide v0, p0, Lkotlin/ranges/j;->d:J

    .line 135
    iget-wide v2, p0, Lkotlin/ranges/j;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 136
    iget-boolean v2, p0, Lkotlin/ranges/j;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 137
    iput-boolean v2, p0, Lkotlin/ranges/j;->b:Z

    return-wide v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/j;->c:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    iput-wide v2, p0, Lkotlin/ranges/j;->d:J

    return-wide v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
