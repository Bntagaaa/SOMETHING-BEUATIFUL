.class public final synthetic Landroidx/core/location/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$l;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/o;->a:Landroidx/core/location/LocationManagerCompat$l;

    iput-object p2, p0, Landroidx/core/location/o;->b:Ljava/lang/String;

    iput p3, p0, Landroidx/core/location/o;->c:I

    iput-object p4, p0, Landroidx/core/location/o;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/core/location/o;->a:Landroidx/core/location/LocationManagerCompat$l;

    iget-object v1, p0, Landroidx/core/location/o;->b:Ljava/lang/String;

    iget v2, p0, Landroidx/core/location/o;->c:I

    iget-object v3, p0, Landroidx/core/location/o;->d:Landroid/os/Bundle;

    .line 720
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 724
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {v0, v1, v2, v3}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
