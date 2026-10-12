.class Lcom/google/common/collect/c4;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lcom/google/common/collect/Maps$h$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$h$a$a;Ljava/util/Map$Entry;)V
    .locals 0

    .line 2731
    iput-object p1, p0, Lcom/google/common/collect/c4;->b:Lcom/google/common/collect/Maps$h$a$a;

    iput-object p2, p0, Lcom/google/common/collect/c4;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2731
    invoke-virtual {p0}, Lcom/google/common/collect/c4;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2734
    iget-object v0, p0, Lcom/google/common/collect/c4;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Lcom/google/common/collect/c4;->b:Lcom/google/common/collect/Maps$h$a$a;

    iget-object v0, v0, Lcom/google/common/collect/Maps$h$a$a;->b:Lcom/google/common/collect/Maps$h$a;

    iget-object v0, v0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Maps$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2740
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
