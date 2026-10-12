.class public final synthetic Landroidx/core/location/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$m;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p3, p0, Landroidx/core/location/p;->a:I

    iput-object p1, p0, Landroidx/core/location/p;->b:Landroidx/core/location/LocationManagerCompat$m;

    iput-object p2, p0, Landroidx/core/location/p;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/core/location/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/core/location/p;->b:Landroidx/core/location/LocationManagerCompat$m;

    iget-object v1, p0, Landroidx/core/location/p;->c:Ljava/util/concurrent/Executor;

    .line 820
    iget-object v2, v0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    :goto_0
    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/p;->b:Landroidx/core/location/LocationManagerCompat$m;

    iget-object v1, p0, Landroidx/core/location/p;->c:Ljava/util/concurrent/Executor;

    .line 835
    iget-object v2, v0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 838
    :cond_1
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
