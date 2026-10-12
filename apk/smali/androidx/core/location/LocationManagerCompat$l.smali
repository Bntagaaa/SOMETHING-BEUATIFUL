.class Landroidx/core/location/LocationManagerCompat$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public volatile a:Landroidx/core/location/LocationManagerCompat$k;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/core/location/LocationManagerCompat$k;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    .line 657
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public getKey()Landroidx/core/location/LocationManagerCompat$k;
    .locals 1

    .line 661
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationManagerCompat$k;

    return-object v0
.end method

.method public onFlushComplete(I)V
    .locals 2

    .line 700
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/n;

    invoke-direct {v1, p0, p1}, Landroidx/core/location/n;-><init>(Landroidx/core/location/LocationManagerCompat$l;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 670
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/core/location/m;-><init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/core/location/m;-><init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/core/location/l;-><init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/core/location/l;-><init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 715
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/core/location/o;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/core/location/o;-><init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    return-void
.end method
