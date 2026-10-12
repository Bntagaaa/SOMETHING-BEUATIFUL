.class public final synthetic Landroidx/core/location/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$l;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$l;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/n;->a:Landroidx/core/location/LocationManagerCompat$l;

    iput p2, p0, Landroidx/core/location/n;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/n;->a:Landroidx/core/location/LocationManagerCompat$l;

    iget v1, p0, Landroidx/core/location/n;->b:I

    .line 705
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$l;->a:Landroidx/core/location/LocationManagerCompat$k;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {v0, v1}, Landroidx/core/location/LocationListenerCompat;->onFlushComplete(I)V

    return-void
.end method
