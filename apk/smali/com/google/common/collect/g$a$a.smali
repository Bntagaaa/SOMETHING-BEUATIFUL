.class Lcom/google/common/collect/g$a$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/g$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g$a;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/google/common/collect/g$a$a;->a:Lcom/google/common/collect/g$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/google/common/collect/g$a$a;->a:Lcom/google/common/collect/g$a;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/google/common/collect/g$a$a;->a:Lcom/google/common/collect/g$a;

    iget-object v0, v0, Lcom/google/common/collect/g$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Collections2;->c(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1343
    new-instance v0, Lcom/google/common/collect/g$a$b;

    iget-object v1, p0, Lcom/google/common/collect/g$a$a;->a:Lcom/google/common/collect/g$a;

    invoke-direct {v0, v1}, Lcom/google/common/collect/g$a$b;-><init>(Lcom/google/common/collect/g$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1355
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g$a$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1358
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1359
    iget-object v0, p0, Lcom/google/common/collect/g$a$a;->a:Lcom/google/common/collect/g$a;

    iget-object v0, v0, Lcom/google/common/collect/g$a;->e:Lcom/google/common/collect/g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 1103
    iget-object v1, v0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 3426
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 1103
    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 1106
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1107
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 1108
    iget p1, v0, Lcom/google/common/collect/g;->g:I

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/google/common/collect/g;->g:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
