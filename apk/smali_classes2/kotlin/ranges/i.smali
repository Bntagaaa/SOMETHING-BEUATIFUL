.class final Lkotlin/ranges/i;
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
        "Lkotlin/UInt;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/i;",
        "",
        "Lkotlin/UInt;",
        "first",
        "last",
        "",
        "step",
        "<init>",
        "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "hasNext",
        "()Z",
        "next-pVg5ArA",
        "()I",
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
.field public final a:I

.field public b:Z

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lkotlin/ranges/i;->a:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    xor-int v2, p1, v1

    xor-int/2addr v1, p2

    .line 127
    invoke-static {v2, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-lez p3, :cond_0

    if-gtz v1, :cond_1

    :goto_0
    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p4, p0, Lkotlin/ranges/i;->b:Z

    .line 128
    invoke-static {p3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p3

    iput p3, p0, Lkotlin/ranges/i;->c:I

    .line 129
    iget-boolean p3, p0, Lkotlin/ranges/i;->b:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, p0, Lkotlin/ranges/i;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lkotlin/ranges/i;->b:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lkotlin/ranges/i;->next-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v0

    return-object v0
.end method

.method public next-pVg5ArA()I
    .locals 2

    .line 134
    iget v0, p0, Lkotlin/ranges/i;->d:I

    .line 135
    iget v1, p0, Lkotlin/ranges/i;->a:I

    if-ne v0, v1, :cond_1

    .line 136
    iget-boolean v1, p0, Lkotlin/ranges/i;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lkotlin/ranges/i;->b:Z

    return v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget v1, p0, Lkotlin/ranges/i;->c:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/i;->d:I

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
