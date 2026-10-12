.class public final synthetic Landroidx/core/location/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$l;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/core/location/m;->a:I

    iput-object p1, p0, Landroidx/core/location/m;->b:Landroidx/core/location/LocationManagerCompat$l;

    iput-object p2, p0, Landroidx/core/location/m;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/core/location/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/core/location/m;->b:Landroidx/core/location/LocationManagerCompat$l;

    iget-object v1, p0, Landroidx/core/location/m;->c:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    .line 675
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/m;->b:Landroidx/core/location/LocationManagerCompat$l;

    iget-object v1, p0, Landroidx/core/location/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 690
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_1

    goto :goto_1

    .line 694
    :cond_1
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {v0, v1}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Ljava/util/List;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
