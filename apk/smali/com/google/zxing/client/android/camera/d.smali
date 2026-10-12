.class final Lcom/google/zxing/client/android/camera/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final a:Lcom/google/zxing/client/android/camera/c;

.field public b:Landroid/os/Handler;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/camera/c;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/d;->a:Lcom/google/zxing/client/android/camera/c;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 132
    iget-object p2, p0, Lcom/google/zxing/client/android/camera/d;->a:Lcom/google/zxing/client/android/camera/c;

    iget-object p2, p2, Lcom/google/zxing/client/android/camera/c;->c:Landroid/graphics/Point;

    .line 45
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/d;->b:Landroid/os/Handler;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcom/google/zxing/client/android/camera/d;->c:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/d;->b:Landroid/os/Handler;

    return-void

    .line 52
    :cond_0
    const-string p1, "d"

    const-string p2, "Got preview callback, but no handler or resolution available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
