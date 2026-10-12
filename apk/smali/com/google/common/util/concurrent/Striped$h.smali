.class Lcom/google/common/util/concurrent/Striped$h;
.super Lcom/google/common/util/concurrent/Striped$k;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$k<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/ConcurrentMap;

.field public final e:Lcom/google/common/base/Supplier;

.field public final f:I


# direct methods
.method public constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 1

    .line 515
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$k;-><init>(I)V

    .line 516
    iget p1, p0, Lcom/google/common/util/concurrent/Striped$k;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$h;->f:I

    .line 517
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$h;->e:Lcom/google/common/base/Supplier;

    .line 518
    new-instance p1, Lcom/google/common/collect/MapMaker;

    invoke-direct {p1}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$h;->d:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 523
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$h;->f:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$h;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 526
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$h;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$h;->e:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 532
    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$h;->f:I

    return v0
.end method
