.class public final Lcom/google/appinventor/components/runtime/ScreenRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Record Screen and Save it as a Video File"
    iconName = "images/screenRecorder.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO, android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;
    }
.end annotation


# instance fields
.field private DISPLAY_HEIGHT:I

.field private DISPLAY_WIDTH:I

.field private PERMISSION_CODE:I

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaProjectionCallback:Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mScreenDensity:I

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x438

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_WIDTH:I

    const/16 v0, 0x780

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_HEIGHT:I

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->context:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mScreenDensity:I

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->context:Landroid/content/Context;

    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 69
    new-instance p1, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;-><init>(Lcom/google/appinventor/components/runtime/ScreenRecorder;I)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjectionCallback:Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ScreenRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/ScreenRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->stopScreenSharing()V

    return-void
.end method

.method private createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_WIDTH:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_HEIGHT:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mScreenDensity:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 183
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 180
    const-string v1, "Screen1"

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method private prepareRecorder()V
    .locals 1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->RecorderInitialized()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private shareScreen()V
    .locals 3

    .line 168
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->PERMISSION_CODE:I

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->PERMISSION_CODE:I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->PERMISSION_CODE:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method private stopScreenSharing()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public DisplayHeight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1920"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Height of recording"
    .end annotation

    .line 81
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_HEIGHT:I

    return-void
.end method

.method public DisplayWidth(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1080"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Width of recording"
    .end annotation

    .line 75
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_WIDTH:I

    return-void
.end method

.method public InitializeRecorder(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Recorder First, then Start the Recording. Use Bitrate above 5000 for Good Quality. Framerate: 60 for smooth animations. FileName: Name of the recording and Folder in which you want to save to"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p2, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_WIDTH:I

    iget v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->DISPLAY_HEIGHT:I

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p3, p4}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->prepareRecorder()V

    return-void
.end method

.method public OnErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 215
    const-string v0, "OnErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RecorderInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Recorder is initialized. Start Screen Recording after this event"
    .end annotation

    const/4 v0, 0x0

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecorderInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RecordingStopped()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Recording Stopped. Either due to error or user stopped it"
    .end annotation

    const/4 v0, 0x0

    .line 230
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecordingStopped"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ScreenCastPermissionDenied()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Permission Denied to record the Screen"
    .end annotation

    const/4 v0, 0x0

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenCastPermissionDenied"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ScreenRecordingStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Started Recording the Screen"
    .end annotation

    const/4 v0, 0x0

    .line 235
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenRecordingStarted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StartRecording()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the recording. Call only after Initializing the Recorder"
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->shareScreen()V

    .line 146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->ScreenRecordingStarted()V

    return-void
.end method

.method public StopRecording()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the Recording and Save the File"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 153
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->stopScreenSharing()V

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->RecordingStopped()V

    return-void
.end method

.method public getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 94
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 95
    const-string p1, "Failed to get External Storage"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->OnErrorOccurred(Ljava/lang/String;)V

    return-object v2

    .line 98
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 106
    const-string v0, ".mp4"

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {p2, v1, p1}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :cond_2
    const-string p1, "Failed to create Recordings directory"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->OnErrorOccurred(Ljava/lang/String;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->PERMISSION_CODE:I

    if-eq p1, v0, :cond_0

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown request code: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->OnErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->ScreenCastPermissionDenied()V

    return-void

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 198
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaProjectionCallback:Lcom/google/appinventor/components/runtime/ScreenRecorder$MediaProjectionCallback;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 199
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ScreenRecorder;->createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method
