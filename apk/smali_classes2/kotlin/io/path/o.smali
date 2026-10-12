.class public final synthetic Lkotlin/io/path/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Ljava/nio/file/Path;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/o;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/o;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/o;->c:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/o;->d:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/o;->e:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lkotlin/io/path/o;->c:Ljava/nio/file/Path;

    iget-object v2, p0, Lkotlin/io/path/o;->d:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/o;->e:Ljava/nio/file/Path;

    move-object v4, p1

    check-cast v4, Ljava/nio/file/Path;

    move-object v5, p2

    check-cast v5, Ljava/io/IOException;

    .line 0
    const-string p1, "directory"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lkotlin/io/path/o;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 245
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 247
    :cond_0
    iget-object v0, p0, Lkotlin/io/path/o;->b:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->d(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
