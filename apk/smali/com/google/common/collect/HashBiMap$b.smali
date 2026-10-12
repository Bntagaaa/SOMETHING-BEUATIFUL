.class final Lcom/google/common/collect/HashBiMap$b;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/HashBiMap;

.field public final b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;I)V
    .locals 0

    .line 1044
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 1045
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    .line 1046
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$b;->b:Ljava/lang/Object;

    .line 1047
    iput p2, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1051
    iget v0, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$b;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    if-eq v0, v1, :cond_1

    iget v1, v3, Lcom/google/common/collect/HashBiMap;->c:I

    if-gt v0, v1, :cond_1

    iget-object v1, v3, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1052
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-static {v2}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/HashBiMap;->g(ILjava/lang/Object;)I

    move-result v0

    .line 1052
    iput v0, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$b;->a()V

    .line 1064
    iget v0, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$b;->a()V

    .line 1070
    iget v0, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    if-ne v0, v1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$b;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0, p1, v2}, Lcom/google/common/collect/HashBiMap;->k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1073
    :cond_0
    iget-object v1, v3, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 1074
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 1077
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    .line 54
    invoke-virtual {v3, p1, v1, v2}, Lcom/google/common/collect/HashBiMap;->o(Ljava/lang/Object;IZ)V

    return-object v0
.end method
