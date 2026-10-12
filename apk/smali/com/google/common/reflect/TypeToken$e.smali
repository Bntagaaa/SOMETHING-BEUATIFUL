.class final Lcom/google/common/reflect/TypeToken$e;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# instance fields
.field public final transient c:Lcom/google/common/reflect/TypeToken$TypeSet;

.field public transient d:Lcom/google/common/collect/ImmutableSet;

.field public final synthetic e:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$e;->e:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 708
    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$e;->c:Lcom/google/common/reflect/TypeToken$TypeSet;

    return-void
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$e;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$e;->delegate()Ljava/util/Set;

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

    .line 713
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e;->d:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e;->c:Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 716
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$h;->b:Lcom/google/common/reflect/TypeToken$h$b;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$e;->d:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
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

    .line 731
    sget-object v0, Lcom/google/common/reflect/TypeToken$g;->b:Lcom/google/common/reflect/TypeToken$g$b;

    .line 102
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$e;->e:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$g;->b(Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 733
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/TypeToken$e$a;

    .line 735
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 734
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
