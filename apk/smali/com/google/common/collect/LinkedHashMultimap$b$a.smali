.class Lcom/google/common/collect/LinkedHashMultimap$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/LinkedHashMultimap$c;

.field public b:Lcom/google/common/collect/LinkedHashMultimap$a;

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/LinkedHashMultimap$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    .line 311
    iget-object v0, p1, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 366
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 311
    iget p1, p1, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 368
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    iget v1, v0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 371
    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    if-ne v1, v2, :cond_1

    .line 379
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 388
    invoke-virtual {v0}, Lcom/google/common/collect/g2;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 389
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 390
    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$a;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v1

    .line 385
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    iget v1, v0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 371
    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    if-ne v1, v2, :cond_1

    .line 397
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 398
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-virtual {v1}, Lcom/google/common/collect/g2;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;->remove(Ljava/lang/Object;)Z

    .line 311
    iget v0, v0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 399
    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void

    .line 372
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
