.class final Lcom/google/zxing/client/android/camera/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/zxing/client/android/camera/a;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/camera/a;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/a$a;->a:Lcom/google/zxing/client/android/camera/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 101
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    iget-object p1, p0, Lcom/google/zxing/client/android/camera/a$a;->a:Lcom/google/zxing/client/android/camera/a;

    monitor-enter p1

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/a$a;->a:Lcom/google/zxing/client/android/camera/a;

    iget-boolean v1, v0, Lcom/google/zxing/client/android/camera/a;->a:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
