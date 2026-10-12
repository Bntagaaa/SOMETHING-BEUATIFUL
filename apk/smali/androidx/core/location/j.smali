.class public final synthetic Landroidx/core/location/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V
    .locals 0

    iput p4, p0, Landroidx/core/location/j;->a:I

    iput-object p1, p0, Landroidx/core/location/j;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/j;->b:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/core/location/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/core/location/j;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$m;

    iget-object v1, p0, Landroidx/core/location/j;->b:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/j;->c:I

    .line 850
    iget-object v3, v0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, v2}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    :goto_0
    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/j;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$i;

    iget-object v1, p0, Landroidx/core/location/j;->b:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/j;->c:I

    .line 928
    iget-object v3, v0, Landroidx/core/location/LocationManagerCompat$i;->c:Ljava/util/concurrent/Executor;

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 931
    :cond_1
    iget-object v0, v0, Landroidx/core/location/LocationManagerCompat$i;->b:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, v2}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
