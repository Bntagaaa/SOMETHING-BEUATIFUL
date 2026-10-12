.class Lcom/google/common/collect/ImmutableMultiset$a;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/UnmodifiableIterator;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 194
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    if-gtz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 201
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Ljava/lang/Object;

    .line 202
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    .line 204
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Ljava/lang/Object;

    return-object v0
.end method
