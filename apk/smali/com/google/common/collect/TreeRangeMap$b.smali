.class final Lcom/google/common/collect/TreeRangeMap$b;
.super Lcom/google/common/collect/Maps$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$m<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Collection;

.field public final synthetic b:Lcom/google/common/collect/TreeRangeMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap;Ljava/util/Collection;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$b;->b:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$m;-><init>()V

    .line 260
    check-cast p2, Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 270
    instance-of v0, p1, Lcom/google/common/collect/Range;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/google/common/collect/Range;

    .line 53
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->b:Lcom/google/common/collect/TreeRangeMap;

    .line 272
    iget-object v1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$b;->b:Lcom/google/common/collect/TreeRangeMap;

    .line 282
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
