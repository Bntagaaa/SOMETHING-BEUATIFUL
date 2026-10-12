.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;


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

    .line 142
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushSubscriptionChange(Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;)V
    .locals 3
    .param p1    # Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 145
    invoke-virtual {p1}, Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;->getCurrent()Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {p1}, Lcom/onesignal/user/subscriptions/PushSubscriptionState;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onesignal/user/subscriptions/PushSubscriptionState;->getOptedIn()Z

    move-result v2

    invoke-virtual {p1}, Lcom/onesignal/user/subscriptions/PushSubscriptionState;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->PushSubscriptionStateChanged(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
