.class final Lcom/google/common/collect/HashBiMap$a;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
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

.field public final synthetic c:Lcom/google/common/collect/HashBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;I)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 866
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$a;->a:Ljava/lang/Object;

    .line 867
    iput p2, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 871
    iget v0, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$a;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    iget v2, v1, Lcom/google/common/collect/HashBiMap;->c:I

    if-gt v0, v2, :cond_1

    iget-object v2, v1, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 198
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v0

    .line 872
    iput v0, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 884
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$a;->a()V

    .line 885
    iget v0, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$a;->a()V

    .line 891
    iget v0, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap;

    if-ne v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 894
    :cond_0
    iget-object v1, v2, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 895
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 898
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v2, p1, v1, v3}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;IZ)V

    return-object v0
.end method
