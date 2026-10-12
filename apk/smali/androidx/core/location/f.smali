.class public final synthetic Landroidx/core/location/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/location/LocationManager;

.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$i;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/f;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Landroidx/core/location/f;->b:Landroidx/core/location/LocationManagerCompat$i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->a:Ljava/lang/Class;

    .line 548
    iget-object v0, p0, Landroidx/core/location/f;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Landroidx/core/location/f;->b:Landroidx/core/location/LocationManagerCompat$i;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
