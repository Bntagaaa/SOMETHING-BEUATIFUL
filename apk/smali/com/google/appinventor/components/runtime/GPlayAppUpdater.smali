.class public final Lcom/google/appinventor/components/runtime/GPlayAppUpdater;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "GPlay updates is a Play Core library feature that introduces a new request flow to prompt active users to update your app.Works only with devices running Android 5.0 (API level 21) or higher,"
    iconName = "images/gPlayAppUpdater.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "app-update.aar, app-update.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar"
.end annotation


# instance fields
.field private MY_REQUEST_CODE:I

.field private activity:Landroid/app/Activity;

.field private appUpdateInfoTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private autoUpdate:Z

.field private context:Landroid/content/Context;

.field private flexible:Z

.field private listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->activity:Landroid/app/Activity;

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->context:Landroid/content/Context;

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 61
    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateInfoTask:Lcom/google/android/gms/tasks/Task;

    .line 63
    new-instance p1, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;-><init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 74
    iget p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateInfoTask:Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;-><init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->autoUpdate:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->flexible:Z

    return p0
.end method


# virtual methods
.method public AutoUpdate(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Automatically Check and Show Updates"
    .end annotation

    .line 132
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->autoUpdate:Z

    return-void
.end method

.method public CompleteUpdate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Complete Update in Case of a Flexible Update. This Function will restart the App and Complete the Update"
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->flexible:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public Flexible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If Enabled Update will happen in the background"
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->flexible:Z

    return-void
.end method

.method public StartUpdate(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Call this Function if Auto Update is not enabled"
    .end annotation

    .line 137
    instance-of v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->flexible:Z

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    const/4 v3, 0x1

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 152
    :cond_1
    const-string p1, "Invalid AppUpdate Info"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    return-void
.end method

.method public UpdateAvailable(ZLjava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update available"
    .end annotation

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "UpdateAvailable"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update cancelled"
    .end annotation

    const/4 v0, 0x0

    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UpdateCancelled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateDownloaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update Was Downloaded"
    .end annotation

    const/4 v0, 0x0

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UpdateDownloaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Update failed"
    .end annotation

    .line 175
    const-string v0, "UpdateFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 116
    iget p3, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->MY_REQUEST_CODE:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateCancelled()V

    :cond_0
    return-void
.end method
