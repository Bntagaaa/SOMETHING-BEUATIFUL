.class final Lcom/google/common/collect/j1;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/google/common/collect/Maps;->e(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 43
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 45
    :cond_0
    new-instance p1, Lcom/google/common/collect/Ordering$c;

    invoke-direct {p1, p2}, Lcom/google/common/collect/Ordering$c;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/google/common/collect/Ordering$c;

    invoke-direct {p2, p1}, Lcom/google/common/collect/Ordering$c;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 52
    instance-of v0, p1, Lcom/google/common/collect/j1;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/google/common/collect/j1;

    .line 54
    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ordering.explicit("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
