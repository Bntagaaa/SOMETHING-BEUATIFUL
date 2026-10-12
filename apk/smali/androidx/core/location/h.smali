.class public final synthetic Landroidx/core/location/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/h;->a:Landroidx/core/location/LocationManagerCompat$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 997
    iget-object v0, p0, Landroidx/core/location/h;->a:Landroidx/core/location/LocationManagerCompat$f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/core/location/LocationManagerCompat$f;->f:Landroidx/core/location/h;

    .line 998
    invoke-virtual {v0, v1}, Landroidx/core/location/LocationManagerCompat$f;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
