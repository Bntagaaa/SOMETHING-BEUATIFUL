.class Lcom/google/common/graph/n$a$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/n$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/HashSet;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/common/graph/n$a$a;->c:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/graph/n$a$a;->d:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/n$a$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/n$i;

    .line 245
    iget-object v1, v0, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/n$a$a;->d:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, v0, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    return-object v0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
