.class final Lcom/google/common/collect/m3$m;
.super Lcom/google/common/collect/m3$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3$n<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/m3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m3;)V
    .locals 0

    .line 2685
    iput-object p1, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/m3$n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2714
    iget-object v0, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m3;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2689
    new-instance v0, Lcom/google/common/collect/m3$l;

    .line 2613
    iget-object v1, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/m3$i;-><init>(Lcom/google/common/collect/m3;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2709
    iget-object v0, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 2694
    iget-object v0, p0, Lcom/google/common/collect/m3$m;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v0}, Lcom/google/common/collect/m3;->size()I

    move-result v0

    return v0
.end method
