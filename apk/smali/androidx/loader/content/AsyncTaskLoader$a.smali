.class final Landroidx/loader/content/AsyncTaskLoader$a;
.super Landroidx/loader/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/concurrent/CountDownLatch;

.field public i:Z

.field public final synthetic j:Landroidx/loader/content/AsyncTaskLoader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 1

    .line 48
    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$a;->j:Landroidx/loader/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$a;->h:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/loader/content/AsyncTaskLoader$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$a;->j:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {p1}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    throw p1
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->h:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader$a;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 233
    invoke-virtual {v1, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 234
    iget-object p1, v1, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    if-ne p1, p0, :cond_0

    .line 236
    invoke-virtual {v1}, Landroidx/loader/content/Loader;->rollbackContentChanged()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/loader/content/AsyncTaskLoader;->n:J

    const/4 p1, 0x0

    .line 238
    iput-object p1, v1, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    .line 240
    invoke-virtual {v1}, Landroidx/loader/content/Loader;->deliverCancellation()V

    .line 241
    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 246
    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    const/4 v2, 0x0

    if-eq v1, p0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 234
    iget-object p1, v0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    if-ne p1, p0, :cond_2

    .line 236
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->rollbackContentChanged()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    .line 238
    iput-object v2, v0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    .line 240
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->deliverCancellation()V

    .line 241
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->a()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->isAbandoned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->commitContentChanged()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    .line 256
    iput-object v2, v0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    .line 258
    invoke-virtual {v0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    .line 105
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->j:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->a()V

    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
