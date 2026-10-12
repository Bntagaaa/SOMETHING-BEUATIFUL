.class Lcom/google/common/collect/y5$e;
.super Lcom/google/common/collect/y5$k;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient f:Ljava/util/Set;

.field public transient g:Lcom/google/common/collect/BiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1169
    iput-object p3, p0, Lcom/google/common/collect/y5$e;->g:Lcom/google/common/collect/BiMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1174
    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 1174
    check-cast v1, Lcom/google/common/collect/BiMap;

    .line 1190
    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$e;->g:Lcom/google/common/collect/BiMap;

    if-nez v1, :cond_0

    .line 1198
    new-instance v1, Lcom/google/common/collect/y5$e;

    .line 976
    iget-object v2, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 1174
    check-cast v2, Lcom/google/common/collect/BiMap;

    .line 1198
    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/collect/y5$e;-><init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V

    iput-object v1, p0, Lcom/google/common/collect/y5$e;->g:Lcom/google/common/collect/BiMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$e;->g:Lcom/google/common/collect/BiMap;

    monitor-exit v0

    return-object v1

    .line 1201
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1160
    invoke-virtual {p0}, Lcom/google/common/collect/y5$e;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$e;->f:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 1174
    check-cast v1, Lcom/google/common/collect/BiMap;

    .line 1181
    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 211
    new-instance v3, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1181
    iput-object v3, p0, Lcom/google/common/collect/y5$e;->f:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1183
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$e;->f:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1184
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
