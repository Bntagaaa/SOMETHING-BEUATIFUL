.class public final synthetic Lkotlin/io/path/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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

    iput-object p1, p0, Lkotlin/io/path/m;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/m;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/m;->c:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/m;->d:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/m;->e:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/m;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Lkotlin/io/path/m;->c:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/m;->d:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/m;->e:Ljava/nio/file/Path;

    check-cast p1, Lkotlin/io/path/FileVisitorBuilder;

    .line 0
    const-string v0, "$this$visitFileTree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lkotlin/io/path/n;

    iget-object v1, p0, Lkotlin/io/path/m;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/io/path/m;->b:Lkotlin/jvm/functions/Function3;

    iget-object v6, p0, Lkotlin/io/path/m;->f:Lkotlin/jvm/functions/Function3;

    invoke-direct/range {v0 .. v6}, Lkotlin/io/path/n;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p1, v0}, Lkotlin/io/path/FileVisitorBuilder;->onPreVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 240
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$c;

    invoke-direct/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$c;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p1, v0}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFile(Lkotlin/jvm/functions/Function2;)V

    .line 241
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$d;

    invoke-direct {v0, v6, v3, v4, v5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$d;-><init>(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {p1, v0}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFileFailed(Lkotlin/jvm/functions/Function2;)V

    .line 242
    new-instance v0, Lkotlin/io/path/o;

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/io/path/o;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {p1, v0}, Lkotlin/io/path/FileVisitorBuilder;->onPostVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 250
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
