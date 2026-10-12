.class public final Lcom/google/common/io/LineReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field public final a:Ljava/lang/Readable;

.field public final b:Ljava/io/Reader;

.field public final c:Ljava/nio/CharBuffer;

.field public final d:[C

.field public final e:Ljava/util/LinkedList;

.field public final f:Lcom/google/common/io/LineReader$a;


# direct methods
.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 54
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/google/common/io/LineReader;->c:Ljava/nio/CharBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/LineReader;->d:[C

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineReader;->e:Ljava/util/LinkedList;

    .line 47
    new-instance v0, Lcom/google/common/io/LineReader$a;

    invoke-direct {v0, p0}, Lcom/google/common/io/LineReader$a;-><init>(Lcom/google/common/io/LineReader;)V

    iput-object v0, p0, Lcom/google/common/io/LineReader;->f:Lcom/google/common/io/LineReader$a;

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    iput-object v0, p0, Lcom/google/common/io/LineReader;->a:Ljava/lang/Readable;

    .line 58
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Reader;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/common/io/LineReader;->b:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/LineReader;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/google/common/io/LineReader;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/google/common/io/LineReader;->d:[C

    iget-object v4, p0, Lcom/google/common/io/LineReader;->b:Ljava/io/Reader;

    if-eqz v4, :cond_0

    array-length v1, v3

    invoke-virtual {v4, v3, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/common/io/LineReader;->a:Ljava/lang/Readable;

    invoke-interface {v4, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 77
    :goto_1
    iget-object v4, p0, Lcom/google/common/io/LineReader;->f:Lcom/google/common/io/LineReader$a;

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 78
    invoke-virtual {v4}, Lcom/google/common/io/i;->finish()V

    goto :goto_2

    .line 81
    :cond_1
    invoke-virtual {v4, v3, v2, v1}, Lcom/google/common/io/i;->add([CII)V

    goto :goto_0

    .line 83
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
