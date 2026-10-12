.class Lcom/google/common/collect/TreeBasedTable$b;
.super Lcom/google/common/collect/v5$g;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v5<",
        "TR;TC;TV;>.g;",
        "Ljava/util/SortedMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public transient f:Ljava/util/SortedMap;

.field public final synthetic g:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/v5$g;-><init>(Lcom/google/common/collect/v5;Ljava/lang/Object;)V

    .line 181
    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    .line 182
    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object p1

    .line 201
    invoke-interface {p1, p3, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 183
    :goto_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->f()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/v5$g;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->f()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    .line 284
    iput-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 201
    invoke-interface {v1, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 201
    invoke-interface {v1, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/util/SortedMap;
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, v2, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 234
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 219
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/google/common/collect/Maps$s;

    .line 3571
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 243
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 296
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/v5$g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 225
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
