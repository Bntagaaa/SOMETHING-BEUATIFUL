.class Lcom/google/common/collect/v5$g;
.super Lcom/google/common/collect/Maps$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$m<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Map;

.field public final synthetic c:Lcom/google/common/collect/v5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5;Ljava/lang/Object;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/google/common/collect/v5$g;->c:Lcom/google/common/collect/v5;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$m;-><init>()V

    .line 273
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/common/collect/Iterators$l;->a:Lcom/google/common/collect/Iterators$l;

    return-object v0

    .line 350
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/google/common/collect/w5;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/w5;-><init>(Lcom/google/common/collect/v5$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public b()Ljava/util/Map;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v5$g;->c:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->c:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->d()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->g(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->c:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v5$g;->c:Lcom/google/common/collect/v5;

    iget-object v1, p0, Lcom/google/common/collect/v5$g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/v5;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3426
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :catch_0
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->d()V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/google/common/collect/v5$g;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 341
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
