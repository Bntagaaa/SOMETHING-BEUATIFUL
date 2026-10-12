.class Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroidx/fragment/app/c$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/fragment/app/h;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/h;->c:Landroidx/fragment/app/c$b;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 276
    iget-object v1, p0, Landroidx/fragment/app/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroidx/fragment/app/c$b;

    invoke-virtual {v0}, Landroidx/fragment/app/c$c;->a()V

    return-void
.end method
