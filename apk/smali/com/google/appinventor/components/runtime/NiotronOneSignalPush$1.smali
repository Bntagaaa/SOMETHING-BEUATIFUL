.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/notifications/IPermissionObserver;


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

    .line 127
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPermissionChange(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->NotificationPermissionChanged(Z)V

    return-void
.end method
