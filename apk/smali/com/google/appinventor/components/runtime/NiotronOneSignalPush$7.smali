.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessageClickListener;


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

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;)V
    .locals 6
    .param p1    # Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;->getResult()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;

    move-result-object v2

    invoke-interface {v2}, Lcom/onesignal/inAppMessages/IInAppMessageClickResult;->getActionId()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;->getResult()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/onesignal/inAppMessages/IInAppMessageClickResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;->getResult()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;

    move-result-object v4

    invoke-interface {v4}, Lcom/onesignal/inAppMessages/IInAppMessageClickResult;->getUrlTarget()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;->getResult()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageClickResult;->getClosingMessage()Z

    move-result v5

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
