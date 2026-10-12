.class final Lcom/google/common/collect/h5$b;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/h5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h5;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/common/collect/h5$b;->c:Lcom/google/common/collect/h5;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/h5$b;->c:Lcom/google/common/collect/h5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/h5;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/common/collect/h5$b;->c:Lcom/google/common/collect/h5;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method
