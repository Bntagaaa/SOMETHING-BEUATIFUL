.class Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/c$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/fragment/app/g;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/c$b;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 255
    new-instance p1, Landroidx/fragment/app/g$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/g$a;-><init>(Landroidx/fragment/app/g;)V

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
