.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lokio/internal/FixedLengthSource;",
        "Lokio/ForwardingSource;",
        "Lokio/Source;",
        "delegate",
        "",
        "size",
        "",
        "truncate",
        "<init>",
        "(Lokio/Source;JZ)V",
        "Lokio/Buffer;",
        "sink",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:J

.field public final c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 1
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 33
    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->b:J

    .line 34
    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->c:Z

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 9
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->d:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lokio/internal/FixedLengthSource;->b:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    move-wide p2, v4

    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v8, p0, Lokio/internal/FixedLengthSource;->c:Z

    if-eqz v8, :cond_2

    sub-long v0, v6, v0

    cmp-long v8, v0, v4

    if-nez v8, :cond_1

    return-wide v2

    .line 50
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 55
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    .line 57
    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->d:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/internal/FixedLengthSource;->d:J

    .line 60
    :cond_3
    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->d:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    cmp-long v0, v1, v6

    if-lez v0, :cond_7

    :cond_5
    cmp-long v0, p2, v4

    if-lez v0, :cond_6

    cmp-long p2, v1, v6

    if-lez p2, :cond_6

    .line 63
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p2

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->d:J

    sub-long/2addr v0, v6

    sub-long/2addr p2, v0

    .line 72
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 74
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 75
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 65
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "expected "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-wide p2
.end method
