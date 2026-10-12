.class public final synthetic Landroidx/core/location/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/util/Consumer;

.field public final synthetic c:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;I)V
    .locals 0

    iput p3, p0, Landroidx/core/location/d;->a:I

    iput-object p1, p0, Landroidx/core/location/d;->b:Landroidx/core/util/Consumer;

    iput-object p2, p0, Landroidx/core/location/d;->c:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/d;->c:Landroid/location/Location;

    iget-object v1, p0, Landroidx/core/location/d;->b:Landroidx/core/util/Consumer;

    iget v2, p0, Landroidx/core/location/d;->a:I

    packed-switch v2, :pswitch_data_0

    .line 1027
    invoke-interface {v1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_0
    sget-object v2, Landroidx/core/location/LocationManagerCompat;->a:Ljava/lang/Class;

    .line 202
    invoke-interface {v1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
