.class public abstract Landroidx/loader/content/AsyncTaskLoader;
.super Landroidx/loader/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/AsyncTaskLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/Loader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile k:Landroidx/loader/content/AsyncTaskLoader$a;

.field public volatile l:Landroidx/loader/content/AsyncTaskLoader$a;

.field public m:J

.field public n:J

.field public o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 132
    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, -0x2710

    .line 124
    iput-wide v1, p0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    .line 133
    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 210
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    .line 213
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->o:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    iget-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    iget-wide v4, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 222
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    .line 223
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->o:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-wide v2, p0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    iget-wide v4, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/loader/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    :cond_2
    return-void
.end method

.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-boolean p2, p2, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_0
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-boolean p2, p2, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_1
    iget-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    invoke-static {p1, p2, p3}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 368
    const-string p1, " mLastLoadCompleteTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->n:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 369
    invoke-static {p1, p2, v0, v1, p3}, Landroidx/core/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCancelLoad()Z
    .locals 4

    .line 162
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 163
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->h:Z

    .line 166
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    .line 173
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->o:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_1
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    return v1

    .line 177
    :cond_2
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$a;->i:Z

    .line 182
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->o:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    return v1

    .line 186
    :cond_3
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    iput-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->l:Landroidx/loader/content/AsyncTaskLoader$a;

    .line 190
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 192
    :cond_4
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    return v0

    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    .line 153
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 154
    new-instance v0, Landroidx/loader/content/AsyncTaskLoader$a;

    invoke-direct {v0, p0}, Landroidx/loader/content/AsyncTaskLoader$a;-><init>(Landroidx/loader/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    .line 156
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->a()V

    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3

    .line 144
    iput-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->m:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->o:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->k:Landroidx/loader/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader$a;->waitForLoader()V

    :cond_0
    return-void
.end method
