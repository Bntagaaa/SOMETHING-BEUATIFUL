.class final Lkotlin/io/path/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0019\u0010\u000f\u001a\u00020\u00082\n\u0010\u000e\u001a\u00060\u000cj\u0002`\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R!\u0010\u001c\u001a\u000c\u0012\u0008\u0012\u00060\u000cj\u0002`\r0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\n\u00a8\u0006#"
    }
    d2 = {
        "Lkotlin/io/path/d;",
        "",
        "",
        "limit",
        "<init>",
        "(I)V",
        "Ljava/nio/file/Path;",
        "name",
        "",
        "enterEntry",
        "(Ljava/nio/file/Path;)V",
        "exitEntry",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "collect",
        "(Ljava/lang/Exception;)V",
        "value",
        "b",
        "I",
        "getTotalExceptions",
        "()I",
        "totalExceptions",
        "",
        "c",
        "Ljava/util/List;",
        "getCollectedExceptions",
        "()Ljava/util/List;",
        "collectedExceptions",
        "d",
        "Ljava/nio/file/Path;",
        "getPath",
        "()Ljava/nio/file/Path;",
        "setPath",
        "path",
        "kotlin-stdlib-jdk7"
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

.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lkotlin/io/path/d;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/io/path/d;->a:I

    .line 323
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/d;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x40

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/io/path/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final collect(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lkotlin/io/path/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/io/path/d;->b:I

    .line 338
    iget-object v0, p0, Lkotlin/io/path/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lkotlin/io/path/d;->a:I

    if-ge v1, v2, :cond_1

    .line 340
    iget-object v1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    if-eqz v1, :cond_0

    .line 343
    invoke-static {}, Lkotlin/io/path/c;->u()V

    iget-object v1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/io/path/c;->g(Ljava/lang/String;)Ljava/nio/file/FileSystemException;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/io/path/c;->c(Ljava/nio/file/FileSystemException;Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.nio.file.FileSystemException"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/io/path/c;->h(Ljava/lang/Throwable;)Ljava/nio/file/FileSystemException;

    move-result-object p1

    .line 347
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final enterEntry(Ljava/nio/file/Path;)V
    .locals 1
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/io/path/c;->q(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    return-void
.end method

.method public final exitEntry(Ljava/nio/file/Path;)V
    .locals 2
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/io/path/c;->n(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    iget-object p1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/io/path/c;->y(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    return-void

    .line 332
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCollectedExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 323
    iget-object v0, p0, Lkotlin/io/path/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 325
    iget-object v0, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final getTotalExceptions()I
    .locals 1

    .line 320
    iget v0, p0, Lkotlin/io/path/d;->b:I

    return v0
.end method

.method public final setPath(Ljava/nio/file/Path;)V
    .locals 0
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 325
    iput-object p1, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    return-void
.end method
