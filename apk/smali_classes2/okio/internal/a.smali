.class final Lokio/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/internal/a;",
        "",
        "",
        "entryCount",
        "centralDirectoryOffset",
        "",
        "commentByteCount",
        "<init>",
        "(JJI)V",
        "a",
        "J",
        "getEntryCount",
        "()J",
        "b",
        "getCentralDirectoryOffset",
        "c",
        "I",
        "getCommentByteCount",
        "()I",
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
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-wide p1, p0, Lokio/internal/a;->a:J

    .line 453
    iput-wide p3, p0, Lokio/internal/a;->b:J

    .line 454
    iput p5, p0, Lokio/internal/a;->c:I

    return-void
.end method


# virtual methods
.method public final getCentralDirectoryOffset()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lokio/internal/a;->b:J

    return-wide v0
.end method

.method public final getCommentByteCount()I
    .locals 1

    .line 454
    iget v0, p0, Lokio/internal/a;->c:I

    return v0
.end method

.method public final getEntryCount()J
    .locals 2

    .line 452
    iget-wide v0, p0, Lokio/internal/a;->a:J

    return-wide v0
.end method
