.class final Landroidx/core/location/LocationManagerCompat$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/location/LocationManager;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroid/os/Handler;

.field public d:Landroidx/core/util/Consumer;

.field public e:Z

.field public f:Landroidx/core/location/h;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$f;->a:Landroid/location/LocationManager;

    .line 968
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$f;->b:Ljava/util/concurrent/Executor;

    .line 969
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$f;->c:Landroid/os/Handler;

    .line 971
    iput-object p3, p0, Landroidx/core/location/LocationManagerCompat$f;->d:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$f;->e:Z

    if-eqz v0, :cond_0

    .line 978
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$f;->e:Z

    .line 981
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1034
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->d:Landroidx/core/util/Consumer;

    .line 1035
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$f;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1036
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$f;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    :cond_1
    return-void

    .line 981
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .line 1019
    monitor-enter p0

    .line 1020
    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$f;->e:Z

    if-eqz v0, :cond_0

    .line 1021
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1023
    iput-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$f;->e:Z

    .line 1024
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->d:Landroidx/core/util/Consumer;

    .line 1027
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$f;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/d;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Landroidx/core/location/d;-><init>(Landroidx/core/util/Consumer;Landroid/location/Location;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1034
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$f;->d:Landroidx/core/util/Consumer;

    .line 1035
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1036
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    :cond_1
    return-void

    .line 1024
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1013
    invoke-virtual {p0, p1}, Landroidx/core/location/LocationManagerCompat$f;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startTimeout(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 988
    monitor-enter p0

    .line 989
    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$f;->e:Z

    if-eqz v0, :cond_0

    .line 990
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 996
    :cond_0
    new-instance v0, Landroidx/core/location/h;

    invoke-direct {v0, p0}, Landroidx/core/location/h;-><init>(Landroidx/core/location/LocationManagerCompat$f;)V

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    .line 1000
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1001
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
