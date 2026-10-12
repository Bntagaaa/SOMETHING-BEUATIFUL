.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

.field private havePermission:Z

.field private savedRecording:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 127
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/SoundRecorder;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return-void
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    .line 318
    const-string v0, "AfterSoundRecorded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    :cond_0
    return-void
.end method

.method public SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    return-object v0
.end method

.method public SavedRecording(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    return-void
.end method

.method public Start()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v0, 0x1

    .line 178
    const-string v1, "Cannot record sound"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.RECORD_AUDIO"

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 183
    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    goto :goto_0

    .line 185
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v4

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {v2, p0, p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v5, "SoundRecorder"

    if-eqz v3, :cond_2

    .line 203
    iget-object v0, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    const-string v1, "Start() called, but already recording to "

    .line 0
    invoke-static {v1, v0, v5}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_2
    const-string v3, "Start() called"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Start"

    if-eqz v2, :cond_3

    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v2, 0x322

    .line 214
    :try_start_0
    new-instance v6, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    return-void

    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    .line 230
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 231
    invoke-static {v5, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 233
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    .line 232
    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 219
    :goto_1
    invoke-static {v5, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 221
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    .line 220
    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 216
    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    const/4 v0, 0x0

    .line 323
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartedRecording"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 298
    const-string v0, "Firing AfterSoundRecorded with "

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v2, "SoundRecorder"

    if-nez v1, :cond_0

    .line 299
    const-string v0, "Stop() called, but already stopped."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 303
    :try_start_0
    const-string v3, "Stop() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v3, "stopping"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    .line 306
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    .line 309
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x321

    invoke-virtual {v0, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_1
    move-exception v0

    .line 311
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    throw v0
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    const/4 v0, 0x0

    .line 328
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StoppedRecording"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 241
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string p3, "SoundRecorder"

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onError"

    const/16 v1, 0x321

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 247
    :try_start_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_0
    move-exception p2

    .line 249
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_1
    move-exception p2

    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    throw p2

    .line 242
    :cond_1
    :goto_0
    const-string p1, "onError called with wrong recorder. Ignoring."

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 258
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v0, "SoundRecorder"

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, p3, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x1

    const/16 p3, 0x321

    .line 262
    const-string v1, "recording"

    const/4 v2, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x320

    if-eq p2, p1, :cond_2

    if-eq p2, p3, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x325

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x324

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 281
    :try_start_0
    const-string p2, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 284
    :try_start_1
    const-string p3, "SoundRecorder was not in a recording state."

    invoke-static {v0, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p3, "Stop"

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v1, 0x323

    invoke-virtual {p2, p0, p3, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    :goto_1
    return-void

    .line 288
    :goto_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    throw p2

    .line 259
    :cond_4
    :goto_3
    const-string p1, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
