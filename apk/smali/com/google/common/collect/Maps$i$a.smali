.class Lcom/google/common/collect/Maps$i$a;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$i;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$i;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$i;Ljava/util/NavigableMap;)V
    .locals 0

    .line 2940
    iput-object p1, p0, Lcom/google/common/collect/Maps$i$a;->b:Lcom/google/common/collect/Maps$i;

    .line 3571
    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2915
    iget-object v0, p0, Lcom/google/common/collect/Maps$i$a;->b:Lcom/google/common/collect/Maps$i;

    iget-object v1, v0, Lcom/google/common/collect/Maps$i;->a:Ljava/util/NavigableMap;

    .line 2915
    iget-object v0, v0, Lcom/google/common/collect/Maps$i;->b:Lcom/google/common/base/Predicate;

    .line 2943
    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$h;->c(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2915
    iget-object v0, p0, Lcom/google/common/collect/Maps$i$a;->b:Lcom/google/common/collect/Maps$i;

    iget-object v1, v0, Lcom/google/common/collect/Maps$i;->a:Ljava/util/NavigableMap;

    .line 2915
    iget-object v0, v0, Lcom/google/common/collect/Maps$i;->b:Lcom/google/common/base/Predicate;

    .line 2948
    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$h;->d(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
