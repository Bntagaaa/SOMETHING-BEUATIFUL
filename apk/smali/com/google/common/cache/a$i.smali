.class abstract Lcom/google/common/cache/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/common/cache/a$r;

.field public d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public e:Lcom/google/common/cache/f;

.field public f:Lcom/google/common/cache/a$l0;

.field public g:Lcom/google/common/cache/a$l0;

.field public final synthetic h:Lcom/google/common/cache/a;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/a;)V
    .locals 0

    .line 4189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/a$i;->h:Lcom/google/common/cache/a;

    .line 4190
    iget-object p1, p1, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/a$i;->a:I

    const/4 p1, -0x1

    .line 4191
    iput p1, p0, Lcom/google/common/cache/a$i;->b:I

    .line 4192
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 4199
    iput-object v0, p0, Lcom/google/common/cache/a$i;->f:Lcom/google/common/cache/a$l0;

    .line 4201
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4205
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4209
    :cond_1
    iget v0, p0, Lcom/google/common/cache/a$i;->a:I

    if-ltz v0, :cond_2

    .line 4210
    iget-object v1, p0, Lcom/google/common/cache/a$i;->h:Lcom/google/common/cache/a;

    iget-object v1, v1, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/a$i;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/cache/a$i;->c:Lcom/google/common/cache/a$r;

    .line 4211
    iget v0, v0, Lcom/google/common/cache/a$r;->b:I

    if-eqz v0, :cond_1

    .line 4212
    iget-object v0, p0, Lcom/google/common/cache/a$i;->c:Lcom/google/common/cache/a$r;

    iget-object v0, v0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/a$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4213
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/a$i;->b:I

    .line 4214
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/common/cache/f;)Z
    .locals 6

    .line 4251
    iget-object v0, p0, Lcom/google/common/cache/a$i;->h:Lcom/google/common/cache/a;

    :try_start_0
    iget-object v1, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 4252
    invoke-interface {p1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1743
    invoke-interface {p1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    .line 1746
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1751
    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 4255
    new-instance p1, Lcom/google/common/cache/a$l0;

    invoke-direct {p1, v0, v3, v5}, Lcom/google/common/cache/a$l0;-><init>(Lcom/google/common/cache/a;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/common/cache/a$i;->f:Lcom/google/common/cache/a$l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4262
    iget-object p1, p0, Lcom/google/common/cache/a$i;->c:Lcom/google/common/cache/a$r;

    invoke-virtual {p1}, Lcom/google/common/cache/a$r;->m()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/common/cache/a$i;->c:Lcom/google/common/cache/a$r;

    invoke-virtual {p1}, Lcom/google/common/cache/a$r;->m()V

    const/4 p1, 0x0

    return p1

    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/a$i;->c:Lcom/google/common/cache/a$r;

    invoke-virtual {v0}, Lcom/google/common/cache/a$r;->m()V

    .line 4263
    throw p1
.end method

.method public final c()Lcom/google/common/cache/a$l0;
    .locals 1

    .line 4272
    iget-object v0, p0, Lcom/google/common/cache/a$i;->f:Lcom/google/common/cache/a$l0;

    if-eqz v0, :cond_0

    .line 4275
    iput-object v0, p0, Lcom/google/common/cache/a$i;->g:Lcom/google/common/cache/a$l0;

    .line 4276
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->a()V

    .line 4277
    iget-object v0, p0, Lcom/google/common/cache/a$i;->g:Lcom/google/common/cache/a$l0;

    return-object v0

    .line 4273
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d()Z
    .locals 1

    .line 4223
    iget-object v0, p0, Lcom/google/common/cache/a$i;->e:Lcom/google/common/cache/f;

    if-eqz v0, :cond_1

    .line 4224
    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$i;->e:Lcom/google/common/cache/f;

    iget-object v0, p0, Lcom/google/common/cache/a$i;->e:Lcom/google/common/cache/f;

    if-eqz v0, :cond_1

    .line 4225
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a$i;->b(Lcom/google/common/cache/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4224
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/a$i;->e:Lcom/google/common/cache/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 4235
    :cond_0
    iget v0, p0, Lcom/google/common/cache/a$i;->b:I

    if-ltz v0, :cond_2

    .line 4236
    iget-object v1, p0, Lcom/google/common/cache/a$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/a$i;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    iput-object v0, p0, Lcom/google/common/cache/a$i;->e:Lcom/google/common/cache/f;

    if-eqz v0, :cond_0

    .line 4237
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a$i;->b(Lcom/google/common/cache/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 4268
    iget-object v0, p0, Lcom/google/common/cache/a$i;->f:Lcom/google/common/cache/a$l0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 4282
    iget-object v0, p0, Lcom/google/common/cache/a$i;->g:Lcom/google/common/cache/a$l0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4283
    iget-object v0, p0, Lcom/google/common/cache/a$i;->g:Lcom/google/common/cache/a$l0;

    invoke-virtual {v0}, Lcom/google/common/cache/a$l0;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/a$i;->h:Lcom/google/common/cache/a;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4284
    iput-object v0, p0, Lcom/google/common/cache/a$i;->g:Lcom/google/common/cache/a$l0;

    return-void
.end method
