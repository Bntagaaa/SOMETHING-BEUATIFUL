.class final Lkotlin/io/path/i;
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
    c = "kotlin.io.path.PathTreeWalk$dfsIterator$1"
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
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0xbf,
        0xc5,
        0xd2,
        0xd8
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "this_$iv",
        "path$iv",
        "$this$iterator",
        "stack",
        "entriesReader",
        "$this$iterator",
        "stack",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "path$iv",
        "$this$iterator",
        "stack",
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
        "L$2",
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
        "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n44#2,19:200\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n70#1:181,19\n81#1:200,19\n*E\n"
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

    iput-object p1, p0, Lkotlin/io/path/i;->j:Lkotlin/io/path/PathTreeWalk;

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

    new-instance v0, Lkotlin/io/path/i;

    iget-object v1, p0, Lkotlin/io/path/i;->j:Lkotlin/io/path/PathTreeWalk;

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/i;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/i;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/i;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/io/path/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget v1, p0, Lkotlin/io/path/i;->h:I

    iget-object v2, p0, Lkotlin/io/path/i;->j:Lkotlin/io/path/PathTreeWalk;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lkotlin/io/path/i;->g:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/i;->f:Lkotlin/io/path/PathTreeWalk;

    iget-object v9, p0, Lkotlin/io/path/i;->e:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/f;

    iget-object v10, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    check-cast v10, Lkotlin/io/path/b;

    iget-object v11, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iget-object v12, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    check-cast v12, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v1, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    check-cast v1, Lkotlin/io/path/b;

    iget-object v6, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iget-object v9, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    check-cast v9, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lkotlin/io/path/i;->g:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/i;->f:Lkotlin/io/path/PathTreeWalk;

    iget-object v9, p0, Lkotlin/io/path/i;->e:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/f;

    iget-object v10, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    check-cast v10, Lkotlin/io/path/b;

    iget-object v11, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iget-object v12, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    check-cast v12, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Lkotlin/sequences/SequenceScope;

    .line 66
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 67
    new-instance v1, Lkotlin/io/path/b;

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v10

    invoke-direct {v1, v10}, Lkotlin/io/path/b;-><init>(Z)V

    .line 69
    new-instance v10, Lkotlin/io/path/f;

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v11

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/io/path/PathTreeWalkKt;->access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v10, v11, v12, v7}, Lkotlin/io/path/f;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/f;)V

    .line 181
    invoke-virtual {v10}, Lkotlin/io/path/f;->getPath()Ljava/nio/file/Path;

    move-result-object v11

    .line 182
    invoke-virtual {v10}, Lkotlin/io/path/f;->getParent()Lkotlin/io/path/f;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 184
    invoke-static {v11}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 186
    :cond_5
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 187
    invoke-static {v10}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/f;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 190
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 191
    iput-object v9, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    iput-object v10, p0, Lkotlin/io/path/i;->e:Ljava/lang/Object;

    iput-object v2, p0, Lkotlin/io/path/i;->f:Lkotlin/io/path/PathTreeWalk;

    iput-object v11, p0, Lkotlin/io/path/i;->g:Ljava/lang/Object;

    iput v8, p0, Lkotlin/io/path/i;->h:I

    invoke-virtual {v9, v11, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v6, v2

    move-object v12, v9

    move-object v9, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, p1

    :goto_1
    move-object p1, v11

    move-object v11, v1

    move-object v1, v10

    move-object v10, v9

    move-object v9, v12

    goto :goto_2

    :cond_7
    move-object v6, v2

    .line 193
    :goto_2
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v6

    array-length v12, v6

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    array-length v12, v6

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 194
    invoke-virtual {v1, v10}, Lkotlin/io/path/b;->readEntries(Lkotlin/io/path/f;)Ljava/util/List;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v10, v6}, Lkotlin/io/path/f;->setContentIterator(Ljava/util/Iterator;)V

    .line 72
    invoke-virtual {p1, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_8
    move-object v6, p1

    goto :goto_3

    .line 188
    :cond_9
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-direct {v0, p1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_a
    new-array v10, v8, [Ljava/nio/file/LinkOption;

    sget-object v12, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v12, v10, v3

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 197
    iput-object v9, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    iput v6, p0, Lkotlin/io/path/i;->h:I

    invoke-virtual {v9, v11, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_8

    goto/16 :goto_6

    .line 75
    :cond_b
    :goto_3
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 76
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/f;

    .line 77
    invoke-virtual {p1}, Lkotlin/io/path/f;->getContentIterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/f;

    .line 200
    invoke-virtual {p1}, Lkotlin/io/path/f;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    .line 201
    invoke-virtual {p1}, Lkotlin/io/path/f;->getParent()Lkotlin/io/path/f;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 203
    invoke-static {v10}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 205
    :cond_c
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/nio/file/LinkOption;

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v11}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 206
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/f;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 209
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 210
    iput-object v9, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/i;->e:Ljava/lang/Object;

    iput-object v2, p0, Lkotlin/io/path/i;->f:Lkotlin/io/path/PathTreeWalk;

    iput-object v10, p0, Lkotlin/io/path/i;->g:Ljava/lang/Object;

    iput v5, p0, Lkotlin/io/path/i;->h:I

    invoke-virtual {v9, v10, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_d

    goto/16 :goto_6

    :cond_d
    move-object v11, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v6

    move-object v12, v9

    move-object v9, p1

    move-object v6, v2

    :goto_4
    move-object p1, v10

    move-object v10, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v12

    goto :goto_5

    :cond_e
    move-object v11, v6

    move-object v6, v2

    .line 212
    :goto_5
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v6

    array-length v12, v6

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    array-length v12, v6

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 213
    invoke-virtual {v1, p1}, Lkotlin/io/path/b;->readEntries(Lkotlin/io/path/f;)Ljava/util/List;

    move-result-object v6

    .line 82
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {p1, v6}, Lkotlin/io/path/f;->setContentIterator(Ljava/util/Iterator;)V

    .line 83
    invoke-virtual {v11, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_f
    move-object v6, v11

    goto/16 :goto_3

    .line 207
    :cond_10
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-direct {v0, p1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_11
    new-array p1, v8, [Ljava/nio/file/LinkOption;

    sget-object v11, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v11, p1, v3

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {v10, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 216
    iput-object v9, p0, Lkotlin/io/path/i;->i:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/i;->c:Lkotlin/collections/ArrayDeque;

    iput-object v1, p0, Lkotlin/io/path/i;->d:Ljava/lang/Object;

    iput-object v7, p0, Lkotlin/io/path/i;->e:Ljava/lang/Object;

    iput-object v7, p0, Lkotlin/io/path/i;->f:Lkotlin/io/path/PathTreeWalk;

    iput-object v7, p0, Lkotlin/io/path/i;->g:Ljava/lang/Object;

    iput v4, p0, Lkotlin/io/path/i;->h:I

    invoke-virtual {v9, v10, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    :goto_6
    return-object v0

    .line 87
    :cond_12
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto/16 :goto_3

    .line 90
    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
