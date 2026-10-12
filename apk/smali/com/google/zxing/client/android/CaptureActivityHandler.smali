.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field public final b:Lcom/google/zxing/client/android/d;

.field public c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

.field public final d:Lcom/google/zxing/client/android/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumSet;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 63
    new-instance v0, Lcom/google/zxing/client/android/d;

    new-instance v1, Lcom/google/zxing/client/android/g;

    .line 117
    iget-object v2, p1, Lcom/google/zxing/client/android/AppInvCaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    .line 64
    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/g;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/client/android/d;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumSet;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/d;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->b:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 69
    iput-object p4, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 70
    invoke-virtual {p4}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 119
    iget-object p2, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    if-ne p2, p1, :cond_0

    .line 120
    sget-object p1, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->a:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 82
    :try_start_0
    iget-object p1, v0, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    iget-object p1, v0, Lcom/google/zxing/client/android/d;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 121
    iget-object p3, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p3, p1, p2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 122
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/d;

    sget-object v5, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->a:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->b:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    iget-object v6, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    const/4 v7, 0x3

    const-string v8, "CaptureActivityHandler"

    if-eq v0, v7, :cond_3

    const/4 v7, 0x5

    if-eq v0, v7, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "Got return scan result message"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {v6, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    .line 78
    :cond_1
    const-string p1, "Got restart preview message"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    if-ne p1, v1, :cond_2

    .line 120
    iput-object v5, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    :try_start_0
    iget-object p1, v4, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    iget-object p1, v4, Lcom/google/zxing/client/android/d;->c:Landroid/os/Handler;

    .line 121
    invoke-virtual {v2, p1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 122
    invoke-virtual {v6}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawViewfinder()V

    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    const-string v0, "Got decode succeeded message"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_4
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 87
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v6, p1, v0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    return-void

    .line 91
    :cond_5
    iput-object v5, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    :try_start_1
    iget-object p1, v4, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :catch_1
    iget-object p1, v4, Lcom/google/zxing/client/android/d;->c:Landroid/os/Handler;

    .line 92
    invoke-virtual {v2, p1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    return-void
.end method

.method public quitSynchronously()V
    .locals 3

    .line 102
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 103
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    :try_start_0
    iget-object v1, v0, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    iget-object v1, v0, Lcom/google/zxing/client/android/d;->c:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 104
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v1, 0x1f4

    .line 108
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x3

    .line 114
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 115
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
