.class Landroidx/core/app/NotificationCompatSideChannelService$a;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p1, 0x0

    throw p1
.end method
