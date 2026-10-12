.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/notifications/INotificationLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InitializeOneSignal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWillDisplay(Lcom/onesignal/notifications/INotificationWillDisplayEvent;)V
    .locals 4
    .param p1    # Lcom/onesignal/notifications/INotificationWillDisplayEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationWillDisplayEvent;->getNotification()Lcom/onesignal/notifications/IDisplayableNotification;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/notifications/IDisplayableNotification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationWillDisplayEvent;->getNotification()Lcom/onesignal/notifications/IDisplayableNotification;

    move-result-object v2

    invoke-interface {v2}, Lcom/onesignal/notifications/IDisplayableNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationWillDisplayEvent;->getNotification()Lcom/onesignal/notifications/IDisplayableNotification;

    move-result-object v3

    invoke-interface {v3}, Lcom/onesignal/notifications/IDisplayableNotification;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationWillDisplayEvent;->getNotification()Lcom/onesignal/notifications/IDisplayableNotification;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/notifications/IDisplayableNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->ReceivedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
