.class Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;->this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;-><init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;->this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;->this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;->this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->b(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;->this$0:Lcom/google/appinventor/components/runtime/ScreenRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->c(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V

    return-void
.end method
