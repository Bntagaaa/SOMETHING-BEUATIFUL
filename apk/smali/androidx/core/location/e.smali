.class public final synthetic Landroidx/core/location/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->a:Landroidx/core/location/LocationManagerCompat$f;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/e;->a:Landroidx/core/location/LocationManagerCompat$f;

    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$f;->cancel()V

    return-void
.end method
