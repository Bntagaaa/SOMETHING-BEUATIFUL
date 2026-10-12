.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroidx/collection/ArraySet;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->a:Z

    .line 25
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->b:Landroidx/collection/ArraySet;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->c:Ljava/util/HashMap;

    .line 27
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker$a;

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->b:Landroidx/collection/ArraySet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRenderTimes()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->a:Z

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    new-instance v3, Landroidx/core/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public logRenderTimes()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-boolean v2, p0, Lcom/airbnb/lottie/PerformanceTracker;->a:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    move-result-object v2

    .line 80
    const-string v3, "Render times:"

    const-string v4, "LOTTIE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 81
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/Pair;

    .line 83
    iget-object v6, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aput-object v5, v7, v0

    const-string v5, "\t\t%30s:%.2f"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->a:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/utils/MeanCalculator;

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    .line 52
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-virtual {v1, p2}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 56
    const-string v0, "__container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->b:Landroidx/collection/ArraySet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .line 58
    invoke-interface {v0, p2}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->b:Landroidx/collection/ArraySet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
