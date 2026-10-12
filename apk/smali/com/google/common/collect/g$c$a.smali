.class Lcom/google/common/collect/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map$Entry;

.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:Lcom/google/common/collect/g$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g$c;Ljava/util/Iterator;)V
    .locals 0

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g$c$a;->c:Lcom/google/common/collect/g$c;

    iput-object p2, p0, Lcom/google/common/collect/g$c$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/google/common/collect/g$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/google/common/collect/g$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/g$c$a;->a:Ljava/util/Map$Entry;

    .line 925
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/google/common/collect/g$c$a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 931
    iget-object v0, p0, Lcom/google/common/collect/g$c$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 932
    iget-object v1, p0, Lcom/google/common/collect/g$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 933
    iget-object v1, p0, Lcom/google/common/collect/g$c$a;->c:Lcom/google/common/collect/g$c;

    iget-object v1, v1, Lcom/google/common/collect/g$c;->b:Lcom/google/common/collect/g;

    .line 85
    iget v2, v1, Lcom/google/common/collect/g;->g:I

    .line 933
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 85
    iput v2, v1, Lcom/google/common/collect/g;->g:I

    .line 934
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 935
    iput-object v0, p0, Lcom/google/common/collect/g$c$a;->a:Ljava/util/Map$Entry;

    return-void
.end method
