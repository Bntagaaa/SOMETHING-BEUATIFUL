.class final Lcom/google/common/collect/Maps$g;
.super Lcom/google/common/collect/Maps$h;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$h<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/collect/BiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V
    .locals 2

    .line 3062
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 3063
    new-instance v0, Lcom/google/common/collect/Maps$g;

    .line 3064
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p1

    .line 3053
    new-instance v1, Lcom/google/common/collect/b4;

    invoke-direct {v1, p2}, Lcom/google/common/collect/b4;-><init>(Lcom/google/common/base/Predicate;)V

    .line 3064
    invoke-direct {v0, p1, v1, p0}, Lcom/google/common/collect/Maps$g;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$g;->g:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V
    .locals 0

    .line 3069
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 3070
    iput-object p3, p0, Lcom/google/common/collect/Maps$g;->g:Lcom/google/common/collect/BiMap;

    return-void
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3079
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Maps$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3074
    iget-object v0, p0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    .line 3080
    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3085
    iget-object v0, p0, Lcom/google/common/collect/Maps$g;->g:Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 3047
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$g;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 3090
    iget-object v0, p0, Lcom/google/common/collect/Maps$g;->g:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
