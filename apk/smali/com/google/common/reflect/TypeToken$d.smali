.class final Lcom/google/common/reflect/TypeToken$d;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# instance fields
.field public transient c:Lcom/google/common/collect/ImmutableSet;

.field public final synthetic d:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$d;->d:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$d;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$d;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->c:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 765
    sget-object v0, Lcom/google/common/reflect/TypeToken$g;->a:Lcom/google/common/reflect/TypeToken$g$a;

    .line 767
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1342
    new-instance v1, Lcom/google/common/reflect/j;

    .line 1342
    invoke-direct {v1, v0}, Lcom/google/common/reflect/TypeToken$g$c;-><init>(Lcom/google/common/reflect/TypeToken$g;)V

    .line 767
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->d:Lcom/google/common/reflect/TypeToken;

    .line 1362
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/j;->b(Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$h;->a:Lcom/google/common/reflect/TypeToken$h$a;

    .line 770
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->c:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/google/common/reflect/TypeToken$g;->b:Lcom/google/common/reflect/TypeToken$g$b;

    .line 787
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1342
    new-instance v1, Lcom/google/common/reflect/j;

    .line 1342
    invoke-direct {v1, v0}, Lcom/google/common/reflect/TypeToken$g$c;-><init>(Lcom/google/common/reflect/TypeToken$g;)V

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 787
    invoke-virtual {v1, v0}, Lcom/google/common/reflect/j;->b(Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 788
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
