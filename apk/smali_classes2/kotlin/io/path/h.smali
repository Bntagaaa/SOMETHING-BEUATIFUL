.class final Lkotlin/io/path/h;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/nio/file/Path;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Ljava/nio/file/Path;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.io.path.PathTreeWalk$bfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xbf,
        0xc5
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "path$iv",
        "$this$iterator",
        "queue",
        "entriesReader"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"
    }
.end annotation


# instance fields
.field public c:Lkotlin/collections/ArrayDeque;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lkotlin/io/path/PathTreeWalk;

.field public g:Ljava/lang/Object;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lkotlin/io/path/PathTreeWalk;


# direct methods
.method public constructor <init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/io/path/h;->j:Lkotlin/io/path/PathTreeWalk;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/io/path/h;

    iget-object v1, p0, Lkotlin/io/path/h;->j:Lkotlin/io/path/PathTreeWalk;

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/h;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/h;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/io/path/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lkotlin/io/path/h;->h:I

    iget-object v2, p0, Lkotlin/io/path/h;->j:Lkotlin/io/path/PathTreeWalk;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lkotlin/io/path/h;->d:Ljava/lang/Object;

    check-cast v1, Lkotlin/io/path/b;

    iget-object v6, p0, Lkotlin/io/path/h;->c:Lkotlin/collections/ArrayDeque;

    iget-object v7, p0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lkotlin/io/path/h;->g:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/h;->f:Lkotlin/io/path/PathTreeWalk;

    iget-object v7, p0, Lkotlin/io/path/h;->e:Ljava/lang/Object;

    check-cast v7, Lkotlin/io/path/f;

    iget-object v8, p0, Lkotlin/io/path/h;->d:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/b;

    iget-object v9, p0, Lkotlin/io/path/h;->c:Lkotlin/collections/ArrayDeque;

    iget-object v10, p0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 94
    new-instance v1, Lkotlin/collections/ArrayDeque;

    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 95
    new-instance v6, Lkotlin/io/path/b;

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v7

    invoke-direct {v6, v7}, Lkotlin/io/path/b;-><init>(Z)V

    .line 97
    new-instance v7, Lkotlin/io/path/f;

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/io/path/PathTreeWalkKt;->access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5}, Lkotlin/io/path/f;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/f;)V

    invoke-virtual {v1, v7}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, p1

    .line 99
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 100
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/f;

    .line 181
    invoke-virtual {p1}, Lkotlin/io/path/f;->getPath()Ljava/nio/file/Path;

    move-result-object v8

    .line 182
    invoke-virtual {p1}, Lkotlin/io/path/f;->getParent()Lkotlin/io/path/f;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 184
    invoke-static {v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 186
    :cond_4
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 187
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/f;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 190
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 191
    iput-object v7, p0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/h;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/h;->d:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/h;->e:Ljava/lang/Object;

    iput-object v2, p0, Lkotlin/io/path/h;->f:Lkotlin/io/path/PathTreeWalk;

    iput-object v8, p0, Lkotlin/io/path/h;->g:Ljava/lang/Object;

    iput v4, p0, Lkotlin/io/path/h;->h:I

    invoke-virtual {v7, v8, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v9, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v6

    move-object v10, v7

    move-object v7, p1

    move-object v6, v2

    :goto_1
    move-object p1, v8

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v10

    goto :goto_2

    :cond_6
    move-object v9, v6

    move-object v6, v2

    .line 193
    :goto_2
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    array-length v10, v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 194
    invoke-virtual {v1, p1}, Lkotlin/io/path/b;->readEntries(Lkotlin/io/path/f;)Ljava/util/List;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v9, p1}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v6, v9

    goto/16 :goto_0

    .line 188
    :cond_8
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-direct {v0, p1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_9
    new-array p1, v4, [Ljava/nio/file/LinkOption;

    sget-object v9, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v10, 0x0

    aput-object v9, p1, v10

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {v8, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    iput-object v7, p0, Lkotlin/io/path/h;->i:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/h;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/h;->d:Ljava/lang/Object;

    iput-object v5, p0, Lkotlin/io/path/h;->e:Ljava/lang/Object;

    iput-object v5, p0, Lkotlin/io/path/h;->f:Lkotlin/io/path/PathTreeWalk;

    iput-object v5, p0, Lkotlin/io/path/h;->g:Ljava/lang/Object;

    iput v3, p0, Lkotlin/io/path/h;->h:I

    invoke-virtual {v7, v8, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_3
    return-object v0

    .line 105
    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
