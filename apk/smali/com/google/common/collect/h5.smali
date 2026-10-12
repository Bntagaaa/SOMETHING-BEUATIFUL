.class abstract Lcom/google/common/collect/h5;
.super Lcom/google/common/collect/ImmutableTable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h5$b;,
        Lcom/google/common/collect/h5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/util/Set;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/h5;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/h5;->g()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/h5$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h5$a;-><init>(Lcom/google/common/collect/h5;)V

    return-object v0
.end method

.method public final g()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/h5$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h5$b;-><init>(Lcom/google/common/collect/h5;)V

    return-object v0
.end method

.method public abstract h(I)Lcom/google/common/collect/Table$Cell;
.end method

.method public abstract i(I)Ljava/lang/Object;
.end method
