.class final Lcom/google/common/collect/k0$d;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;I)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 746
    iget-object p1, p1, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/k0$d;->a:Ljava/lang/Object;

    .line 747
    iput p2, p0, Lcom/google/common/collect/k0$d;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 757
    iget v0, p0, Lcom/google/common/collect/k0$d;->b:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/common/collect/k0$d;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0;

    if-eq v0, v1, :cond_1

    .line 758
    invoke-virtual {v3}, Lcom/google/common/collect/k0;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, v3, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/k0$d;->b:I

    aget-object v0, v0, v1

    .line 759
    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 760
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/collect/k0;->j:Ljava/lang/Object;

    .line 76
    invoke-virtual {v3, v2}, Lcom/google/common/collect/k0;->k(Ljava/lang/Object;)I

    move-result v0

    .line 760
    iput v0, p0, Lcom/google/common/collect/k0$d;->b:I

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/google/common/collect/k0$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/k0$d;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k0$d;->a()V

    .line 773
    iget v1, p0, Lcom/google/common/collect/k0$d;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    .line 780
    iget-object v2, p0, Lcom/google/common/collect/k0$d;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 781
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k0$d;->a()V

    .line 784
    iget v1, p0, Lcom/google/common/collect/k0$d;->b:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 785
    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/k0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 788
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v2, v0, v1

    .line 789
    aput-object p1, v0, v1

    return-object v2
.end method
