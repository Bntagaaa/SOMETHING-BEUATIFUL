.class Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GPlayAppUpdater;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GPlayAppUpdater;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/install/InstallState;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;->this$0:Lcom/google/appinventor/components/runtime/GPlayAppUpdater;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater;->UpdateDownloaded()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GPlayAppUpdater$1;->onStateUpdate(Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method
