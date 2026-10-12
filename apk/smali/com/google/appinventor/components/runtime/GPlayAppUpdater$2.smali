.class Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GPlayAppUpdater;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->e(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->d(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->c(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->b(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)I

    move-result v2

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {v0, v2, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateAvailable(ZLjava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {v0, v3, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateAvailable(ZLjava/lang/Object;)V

    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->e(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->d(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->c(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->b(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->a(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)I

    move-result v3

    invoke-interface {v0, p1, v2, v1, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {v0, v2, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateAvailable(ZLjava/lang/Object;)V

    return-void

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {v0, v3, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateAvailable(ZLjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$2;->onSuccess(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
