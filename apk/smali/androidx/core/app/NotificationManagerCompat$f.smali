.class Landroidx/core/app/NotificationManagerCompat$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationManagerCompat$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$f;->a:Ljava/lang/String;

    .line 997
    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$f;->b:I

    .line 998
    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$f;->c:Ljava/lang/String;

    .line 999
    iput-object p4, p0, Landroidx/core/app/NotificationManagerCompat$f;->d:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$f;->c:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$f;->d:Landroid/app/Notification;

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat$f;->a:Ljava/lang/String;

    iget v3, p0, Landroidx/core/app/NotificationManagerCompat$f;->b:I

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifyTask[packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1013
    const-string v1, ", tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$f;->c:Ljava/lang/String;

    .line 1014
    const-string v2, "]"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
