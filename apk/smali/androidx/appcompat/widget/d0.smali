.class public final synthetic Landroidx/appcompat/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/e0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/e0;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/d0;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Landroidx/appcompat/widget/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/d0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Landroidx/appcompat/widget/e0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->a()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Landroidx/appcompat/widget/d0;->b:Landroidx/appcompat/widget/e0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/e0;->c(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
