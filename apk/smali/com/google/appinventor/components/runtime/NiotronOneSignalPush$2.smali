.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/user/state/IUserStateObserver;


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

    .line 134
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserStateChange(Lcom/onesignal/user/state/UserChangedState;)V
    .locals 2
    .param p1    # Lcom/onesignal/user/state/UserChangedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 137
    invoke-virtual {p1}, Lcom/onesignal/user/state/UserChangedState;->getCurrent()Lcom/onesignal/user/state/UserState;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {p1}, Lcom/onesignal/user/state/UserState;->getOnesignalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onesignal/user/state/UserState;->getExternalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->UserStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
