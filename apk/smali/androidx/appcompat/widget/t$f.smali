.class Landroidx/appcompat/widget/t$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/t;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/t;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/t$f;->a:Landroidx/appcompat/widget/t;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Landroidx/appcompat/widget/t$f;->a:Landroidx/appcompat/widget/t;

    iput-object v0, v1, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    .line 733
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post()V
    .locals 1

    .line 737
    iget-object v0, p0, Landroidx/appcompat/widget/t$f;->a:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 727
    iget-object v1, p0, Landroidx/appcompat/widget/t$f;->a:Landroidx/appcompat/widget/t;

    iput-object v0, v1, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    .line 728
    invoke-virtual {v1}, Landroidx/appcompat/widget/t;->drawableStateChanged()V

    return-void
.end method
