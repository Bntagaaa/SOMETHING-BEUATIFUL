.class public final Lokio/internal/ZipEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\"\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0005\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\n\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001e\u001a\u0004\u0008\"\u0010 R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008$\u0010 R\u0017\u0010\r\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0017\u0010\u000f\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u001e\u001a\u0004\u0008.\u0010 R\u001d\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\u00a8\u00065"
    }
    d2 = {
        "Lokio/internal/ZipEntry;",
        "",
        "Lokio/Path;",
        "canonicalPath",
        "",
        "isDirectory",
        "",
        "comment",
        "",
        "crc",
        "compressedSize",
        "size",
        "",
        "compressionMethod",
        "lastModifiedAtMillis",
        "offset",
        "<init>",
        "(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V",
        "a",
        "Lokio/Path;",
        "getCanonicalPath",
        "()Lokio/Path;",
        "b",
        "Z",
        "()Z",
        "c",
        "Ljava/lang/String;",
        "getComment",
        "()Ljava/lang/String;",
        "d",
        "J",
        "getCrc",
        "()J",
        "e",
        "getCompressedSize",
        "f",
        "getSize",
        "g",
        "I",
        "getCompressionMethod",
        "()I",
        "h",
        "Ljava/lang/Long;",
        "getLastModifiedAtMillis",
        "()Ljava/lang/Long;",
        "i",
        "getOffset",
        "",
        "j",
        "Ljava/util/List;",
        "getChildren",
        "()Ljava/util/List;",
        "children",
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
.field public final a:Lokio/Path;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Ljava/lang/Long;

.field public final i:J

.field public final j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canonicalPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lokio/internal/ZipEntry;->a:Lokio/Path;

    .line 29
    iput-boolean p2, p0, Lokio/internal/ZipEntry;->b:Z

    .line 32
    iput-object p3, p0, Lokio/internal/ZipEntry;->c:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lokio/internal/ZipEntry;->d:J

    .line 38
    iput-wide p6, p0, Lokio/internal/ZipEntry;->e:J

    .line 41
    iput-wide p8, p0, Lokio/internal/ZipEntry;->f:J

    .line 44
    iput p10, p0, Lokio/internal/ZipEntry;->g:I

    .line 46
    iput-object p11, p0, Lokio/internal/ZipEntry;->h:Ljava/lang/Long;

    .line 48
    iput-wide p12, p0, Lokio/internal/ZipEntry;->i:J

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipEntry;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 32
    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    move-wide v8, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    move-wide v10, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    goto :goto_5

    :cond_5
    move/from16 v3, p10

    :goto_5
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p11

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    move-wide/from16 p14, v4

    :goto_7
    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p12, v3

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-object/from16 p13, v12

    goto :goto_8

    :cond_7
    move-wide/from16 p14, p12

    goto :goto_7

    .line 21
    :goto_8
    invoke-direct/range {p2 .. p15}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-void
.end method


# virtual methods
.method public final getCanonicalPath()Lokio/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lokio/internal/ZipEntry;->a:Lokio/Path;

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lokio/internal/ZipEntry;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lokio/internal/ZipEntry;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompressedSize()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lokio/internal/ZipEntry;->e:J

    return-wide v0
.end method

.method public final getCompressionMethod()I
    .locals 1

    .line 44
    iget v0, p0, Lokio/internal/ZipEntry;->g:I

    return v0
.end method

.method public final getCrc()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lokio/internal/ZipEntry;->d:J

    return-wide v0
.end method

.method public final getLastModifiedAtMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lokio/internal/ZipEntry;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOffset()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lokio/internal/ZipEntry;->i:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lokio/internal/ZipEntry;->f:J

    return-wide v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lokio/internal/ZipEntry;->b:Z

    return v0
.end method
