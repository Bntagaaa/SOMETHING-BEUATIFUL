.class Lcom/google/common/collect/x4;
.super Lcom/google/common/collect/f2;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f2<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    .line 65
    throw p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 70
    throw v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    .line 80
    throw v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    .line 75
    throw v0
.end method

.method public final f()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 85
    throw p1
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 59
    throw p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x4;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method
