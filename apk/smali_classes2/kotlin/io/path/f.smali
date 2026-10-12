.class final Lkotlin/io/path/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010(\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R*\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/io/path/f;",
        "",
        "Ljava/nio/file/Path;",
        "path",
        "key",
        "parent",
        "<init>",
        "(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/f;)V",
        "a",
        "Ljava/nio/file/Path;",
        "getPath",
        "()Ljava/nio/file/Path;",
        "b",
        "Ljava/lang/Object;",
        "getKey",
        "()Ljava/lang/Object;",
        "c",
        "Lkotlin/io/path/f;",
        "getParent",
        "()Lkotlin/io/path/f;",
        "",
        "d",
        "Ljava/util/Iterator;",
        "getContentIterator",
        "()Ljava/util/Iterator;",
        "setContentIterator",
        "(Ljava/util/Iterator;)V",
        "contentIterator",
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
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/io/path/f;

.field public d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/f;)V
    .locals 1
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/io/path/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/f;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Lkotlin/io/path/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/io/path/f;->c:Lkotlin/io/path/f;

    return-void
.end method


# virtual methods
.method public final getContentIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/io/path/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 119
    iget-object v0, p0, Lkotlin/io/path/f;->d:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lkotlin/io/path/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getParent()Lkotlin/io/path/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lkotlin/io/path/f;->c:Lkotlin/io/path/f;

    return-object v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object v0, p0, Lkotlin/io/path/f;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final setContentIterator(Ljava/util/Iterator;)V
    .locals 0
    .param p1    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lkotlin/io/path/f;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lkotlin/io/path/f;->d:Ljava/util/Iterator;

    return-void
.end method
