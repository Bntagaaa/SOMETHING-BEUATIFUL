.class Landroidx/core/location/LocationManagerCompat$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:Landroid/location/LocationManager;

.field public final b:Landroidx/core/location/GnssStatusCompat$Callback;

.field public volatile c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 882
    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 883
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$i;->a:Landroid/location/LocationManager;

    .line 884
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$i;->b:Landroidx/core/location/GnssStatusCompat$Callback;

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 899
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$i;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 936
    :cond_1
    iget-object p1, p0, Landroidx/core/location/LocationManagerCompat$i;->a:Landroid/location/LocationManager;

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 938
    invoke-static {p1}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GpsStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object p1

    .line 939
    new-instance v1, Landroidx/core/location/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/k;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 924
    :cond_2
    iget-object p1, p0, Landroidx/core/location/LocationManagerCompat$i;->a:Landroid/location/LocationManager;

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 926
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result p1

    .line 927
    new-instance v1, Landroidx/core/location/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/j;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    .line 916
    :cond_4
    new-instance p1, Landroidx/core/location/i;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Landroidx/core/location/i;-><init>(Landroidx/core/location/LocationManagerCompat$i;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 908
    :cond_5
    new-instance p1, Landroidx/core/location/i;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Landroidx/core/location/i;-><init>(Landroidx/core/location/LocationManagerCompat$i;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 888
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$i;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 889
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$i;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 893
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$i;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
