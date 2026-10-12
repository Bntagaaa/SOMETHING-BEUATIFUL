.class abstract Lcom/google/common/collect/ImmutableMap$a;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 432
    new-instance v0, Lcom/google/common/collect/k2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k2;-><init>(Lcom/google/common/collect/ImmutableMap$a;)V

    return-object v0
.end method

.method public b()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 416
    new-instance v0, Lcom/google/common/collect/n2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 437
    new-instance v0, Lcom/google/common/collect/o2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o2;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()Lcom/google/common/collect/UnmodifiableIterator;
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
