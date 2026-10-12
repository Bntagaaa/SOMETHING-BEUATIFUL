.class Lcom/google/common/collect/z2;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/a3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a3;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/z2;->c:Lcom/google/common/collect/a3;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/common/collect/z2;->c:Lcom/google/common/collect/a3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a3;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/z2;->c:Lcom/google/common/collect/a3;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/common/collect/z2;->c:Lcom/google/common/collect/a3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
