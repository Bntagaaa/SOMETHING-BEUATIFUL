.class Lcom/google/common/collect/Maps$b;
.super Lcom/google/common/collect/Maps$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$d0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/Set;

.field public final e:Lcom/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/common/base/Function;)V
    .locals 0

    .line 773
    invoke-direct {p0}, Lcom/google/common/collect/Maps$d0;-><init>()V

    .line 774
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    .line 775
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->d:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 822
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 795
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 839
    new-instance v0, Lcom/google/common/collect/Maps$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$b$a;-><init>(Lcom/google/common/collect/Maps$b;)V

    return-object v0
.end method

.method public createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    .line 980
    new-instance v1, Lcom/google/common/collect/u3;

    invoke-direct {v1, v0}, Lcom/google/common/collect/u3;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 800
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Collections2;->c(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 811
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
