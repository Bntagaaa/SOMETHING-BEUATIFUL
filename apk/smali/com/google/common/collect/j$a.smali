.class abstract Lcom/google/common/collect/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
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

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/j$a;->d:Lcom/google/common/collect/j;

    .line 164
    iget-object v0, p1, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    invoke-virtual {v0}, Lcom/google/common/collect/r4;->b()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/j$a;->a:I

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/google/common/collect/j$a;->b:I

    .line 166
    iget-object p1, p1, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget p1, p1, Lcom/google/common/collect/r4;->d:I

    iput p1, p0, Lcom/google/common/collect/j$a;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/j$a;->d:Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget v0, v0, Lcom/google/common/collect/r4;->d:I

    iget v1, p0, Lcom/google/common/collect/j$a;->c:I

    if-ne v0, v1, :cond_1

    .line 179
    iget v0, p0, Lcom/google/common/collect/j$a;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/google/common/collect/j$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/google/common/collect/j$a;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/google/common/collect/j$a;->a:I

    iput v1, p0, Lcom/google/common/collect/j$a;->b:I

    .line 189
    iget-object v2, p0, Lcom/google/common/collect/j$a;->d:Lcom/google/common/collect/j;

    iget-object v2, v2, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/r4;->i(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/j$a;->a:I

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/j$a;->d:Lcom/google/common/collect/j;

    iget-object v1, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget v1, v1, Lcom/google/common/collect/r4;->d:I

    iget v2, p0, Lcom/google/common/collect/j$a;->c:I

    if-ne v1, v2, :cond_1

    .line 196
    iget v1, p0, Lcom/google/common/collect/j$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 197
    iget-wide v3, v0, Lcom/google/common/collect/j;->d:J

    iget-object v1, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget v5, p0, Lcom/google/common/collect/j$a;->b:I

    invoke-virtual {v1, v5}, Lcom/google/common/collect/r4;->l(I)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/common/collect/j;->d:J

    .line 198
    iget-object v1, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget v3, p0, Lcom/google/common/collect/j$a;->a:I

    iget v4, p0, Lcom/google/common/collect/j$a;->b:I

    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/r4;->j(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/j$a;->a:I

    .line 199
    iput v2, p0, Lcom/google/common/collect/j$a;->b:I

    .line 200
    iget-object v0, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    iget v0, v0, Lcom/google/common/collect/r4;->d:I

    iput v0, p0, Lcom/google/common/collect/j$a;->c:I

    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
