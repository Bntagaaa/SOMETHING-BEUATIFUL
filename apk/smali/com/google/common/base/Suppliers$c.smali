.class Lcom/google/common/base/Suppliers$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile a:Lcom/google/common/base/Supplier;

.field public volatile b:Z

.field public c:Ljava/lang/Object;


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$c;->b:Z

    if-nez v0, :cond_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$c;->b:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/common/base/Suppliers$c;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/google/common/base/Suppliers$c;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/google/common/base/Suppliers$c;->b:Z

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lcom/google/common/base/Suppliers$c;->a:Lcom/google/common/base/Supplier;

    .line 172
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 174
    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/base/Suppliers$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/google/common/base/Suppliers$c;->a:Lcom/google/common/base/Supplier;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<supplier that returned "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/common/base/Suppliers$c;->c:Ljava/lang/Object;

    const-string v3, ">"

    .line 0
    invoke-static {v0, v2, v3}, L_COROUTINE/a;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    const-string v2, ")"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
