.class Landroidx/core/location/LocationManagerCompat$m;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final a:Landroidx/core/location/GnssStatusCompat$Callback;

.field public volatile b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2

    .line 797
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 798
    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 799
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/GnssStatusCompat$Callback;

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 3

    .line 844
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 849
    :cond_0
    new-instance v1, Landroidx/core/location/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/j;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 3

    .line 859
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 864
    :cond_0
    new-instance v1, Landroidx/core/location/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/k;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStarted()V
    .locals 3

    .line 814
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 819
    :cond_0
    new-instance v1, Landroidx/core/location/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroidx/core/location/p;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopped()V
    .locals 3

    .line 829
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 834
    :cond_0
    new-instance v1, Landroidx/core/location/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/core/location/p;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 803
    :goto_0
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 804
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 805
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
