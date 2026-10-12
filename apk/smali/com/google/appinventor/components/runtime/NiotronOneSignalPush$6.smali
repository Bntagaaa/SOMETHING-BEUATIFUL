.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;


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

    .line 170
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidDismiss(Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;)V
    .locals 1
    .param p1    # Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public onDidDisplay(Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;)V
    .locals 1
    .param p1    # Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageDisplayed(Ljava/lang/String;)V

    return-void
.end method

.method public onWillDismiss(Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;)V
    .locals 1
    .param p1    # Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageWillDismiss(Ljava/lang/String;)V

    return-void
.end method

.method public onWillDisplay(Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;)V
    .locals 1
    .param p1    # Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageWillDisplay(Ljava/lang/String;)V

    return-void
.end method
