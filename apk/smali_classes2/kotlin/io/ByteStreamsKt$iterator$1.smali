.class public final Lkotlin/io/ByteStreamsKt$iterator$1;
.super Lkotlin/collections/ByteIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/ByteStreamsKt;->iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u0006\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0004\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0004\"\u0004\u0008\u0017\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "kotlin/io/ByteStreamsKt$iterator$1",
        "Lkotlin/collections/ByteIterator;",
        "",
        "hasNext",
        "()Z",
        "",
        "nextByte",
        "()B",
        "",
        "a",
        "I",
        "getNextByte",
        "()I",
        "setNextByte",
        "(I)V",
        "b",
        "Z",
        "getNextPrepared",
        "setNextPrepared",
        "(Z)V",
        "nextPrepared",
        "c",
        "getFinished",
        "setFinished",
        "finished",
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
.field public a:I

.field public b:Z

.field public c:Z

.field public final synthetic d:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 0

    iput-object p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->d:Ljava/io/BufferedInputStream;

    .line 16
    invoke-direct {p0}, Lkotlin/collections/ByteIterator;-><init>()V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 25
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->d:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->a:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->b:Z

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    iput-boolean v1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    :cond_1
    return-void
.end method

.method public final getFinished()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    return v0
.end method

.method public final getNextByte()I
    .locals 1

    .line 18
    iget v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->a:I

    return v0
.end method

.method public final getNextPrepared()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->b:Z

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lkotlin/io/ByteStreamsKt$iterator$1;->a()V

    .line 34
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 38
    invoke-virtual {p0}, Lkotlin/io/ByteStreamsKt$iterator$1;->a()V

    .line 39
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    if-nez v0, :cond_0

    .line 41
    iget v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->a:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->b:Z

    return v0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Input stream is over."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFinished(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->c:Z

    return-void
.end method

.method public final setNextByte(I)V
    .locals 0

    .line 18
    iput p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->a:I

    return-void
.end method

.method public final setNextPrepared(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->b:Z

    return-void
.end method
