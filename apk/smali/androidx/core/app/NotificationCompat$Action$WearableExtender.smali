.class public final Landroidx/core/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6618
    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 2
    .param p1    # Landroidx/core/app/NotificationCompat$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6618
    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    .line 6637
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6639
    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    .line 6640
    const-string v0, "inProgressLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    .line 6641
    const-string v0, "confirmLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    .line 6642
    const-string v0, "cancelLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6705
    iget p2, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    return-void

    .line 6707
    :cond_0
    iget p2, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    return-void
.end method

.method public clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6674
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;-><init>()V

    .line 6675
    iget v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    .line 6676
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    .line 6677
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    .line 6678
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6600
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 3
    .param p1    # Landroidx/core/app/NotificationCompat$Action$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6655
    iget v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6656
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6658
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 6659
    const-string v2, "inProgressLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6661
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 6662
    const-string v2, "confirmLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6664
    :cond_2
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 6665
    const-string v2, "cancelLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6668
    :cond_3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6793
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6765
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .locals 1

    .line 6844
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHintLaunchesActivity()Z
    .locals 1

    .line 6817
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6736
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 2

    .line 6700
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAvailableOffline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 6689
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6779
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6750
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHintDisplayActionInline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x4

    .line 6831
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    .line 6805
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6722
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
