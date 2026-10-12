.class public final synthetic Lkotlin/io/path/n;
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

.field public final synthetic f:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/n;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/n;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/n;->c:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/n;->d:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/n;->e:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/n;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v2, p0, Lkotlin/io/path/n;->c:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/n;->d:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/n;->e:Ljava/nio/file/Path;

    move-object v6, p1

    check-cast v6, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 0
    const-string p1, "directory"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "attributes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lkotlin/io/path/n;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/n;->b:Lkotlin/jvm/functions/Function3;

    iget-object v5, p0, Lkotlin/io/path/n;->f:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->b(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 237
    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p1, p2, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method
