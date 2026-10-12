.class Lcom/google/common/collect/Maps$h$a;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Maps$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$h;)V
    .locals 0

    .line 2720
    iput-object p1, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$h$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$h$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2723
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    iget-object v0, v0, Lcom/google/common/collect/Maps$h;->f:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2728
    new-instance v0, Lcom/google/common/collect/Maps$h$a$a;

    iget-object v1, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    iget-object v1, v1, Lcom/google/common/collect/Maps$h;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$h$a$a;-><init>(Lcom/google/common/collect/Maps$h$a;Ljava/util/Iterator;)V

    return-object v0
.end method
