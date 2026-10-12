.class final Lcom/google/common/util/concurrent/ServiceManager$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$f$b;,
        Lcom/google/common/util/concurrent/ServiceManager$f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/Monitor;

.field public final b:Lcom/google/common/collect/SetMultimap;

.field public final c:Lcom/google/common/collect/Multiset;

.field public final d:Ljava/util/IdentityHashMap;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final i:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final j:Lcom/google/common/util/concurrent/a0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 2

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/Monitor;

    .line 420
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    .line 422
    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/SetMultimap;

    .line 425
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/Multiset;

    .line 428
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/IdentityHashMap;

    .line 455
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$f$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$f$a;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->h:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 475
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$f$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$f$b;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 491
    new-instance v1, Lcom/google/common/util/concurrent/a0;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/a0;-><init>()V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/a0;

    .line 500
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    .line 501
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 739
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne v1, v2, :cond_0

    return-void

    .line 740
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected to be healthy after starting. The following services are not running: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-static {v0}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/SetMultimap;

    invoke-static {v3, v0}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 744
    throw v1
.end method

.method public final b()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/Monitor;

    .line 732
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "It is incorrect to execute listeners with the monitor held."

    .line 731
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a0;->dispatch()V

    return-void
.end method

.method public final c()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 5

    .line 596
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v2}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 600
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v4, :cond_0

    .line 601
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 605
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 607
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0

    .line 605
    :goto_1
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 606
    throw v0
.end method

.method public final d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V
    .locals 9

    const/4 v0, 0x0

    .line 652
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/SetMultimap;

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    if-eq p2, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 653
    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 654
    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 656
    :try_start_0
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->f:Z

    .line 657
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    .line 700
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 702
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->b()V

    return-void

    .line 662
    :cond_2
    :try_start_1
    invoke-interface {v1, p2, p1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Service %s not at the expected location in the state map %s"

    .line 661
    invoke-static {v5, v6, p1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    invoke-interface {v1, p3, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "Service %s in the state map unexpectedly at %s"

    .line 666
    invoke-static {p2, v1, p1, p3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/IdentityHashMap;

    :try_start_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    if-nez v1, :cond_3

    .line 675
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v1

    .line 676
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 678
    :cond_3
    :goto_2
    sget-object p2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p3, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 680
    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 681
    instance-of v5, p1, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v5, :cond_4

    .line 124
    sget-object v5, Lcom/google/common/util/concurrent/ServiceManager;->c:Ljava/util/logging/Logger;

    .line 682
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Started {0} in {1}."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object v1, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :cond_4
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/a0;

    if-ne p3, v0, :cond_5

    .line 715
    :try_start_3
    new-instance p3, Lcom/google/common/util/concurrent/l0;

    invoke-direct {p3, p1}, Lcom/google/common/util/concurrent/l0;-><init>(Lcom/google/common/util/concurrent/Service;)V

    invoke-virtual {v1, p3}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    .line 692
    :cond_5
    invoke-interface {v2, p2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne p1, p2, :cond_6

    .line 124
    :try_start_4
    sget-object p1, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$a;

    .line 711
    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    goto :goto_1

    .line 696
    :cond_6
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p1, p3

    if-ne p1, p2, :cond_1

    .line 124
    sget-object p1, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/util/concurrent/ServiceManager$b;

    .line 707
    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 700
    :goto_3
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 702
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->b()V

    .line 703
    throw p1
.end method
