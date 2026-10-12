.class Lcom/google/common/collect/Maps$j$a;
.super Lcom/google/common/collect/Maps$h$b;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$h<",
        "TK;TV;>.b;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Maps$j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$j;)V
    .locals 0

    .line 2842
    iput-object p1, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$h$b;-><init>(Lcom/google/common/collect/Maps$h;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2828
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    iget-object v0, v0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    .line 2828
    check-cast v0, Ljava/util/SortedMap;

    .line 2845
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2865
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$j;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2855
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$j;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2870
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$j;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2850
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Maps$j;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2860
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$j;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method
