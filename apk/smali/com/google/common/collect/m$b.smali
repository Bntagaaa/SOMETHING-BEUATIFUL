.class Lcom/google/common/collect/m$b;
.super Lcom/google/common/collect/Multisets$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/m;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/m;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/m;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/m;

    invoke-virtual {v0}, Lcom/google/common/collect/m;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/m;

    invoke-virtual {v0}, Lcom/google/common/collect/m;->b()I

    move-result v0

    return v0
.end method
