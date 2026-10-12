.class Landroidx/fragment/app/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b1$b;

.field public final synthetic b:Landroidx/fragment/app/b1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1;Landroidx/fragment/app/b1$b;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/b1;

    iput-object p2, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/b1$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget-object v0, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/b1;

    iget-object v0, v0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/b1$b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/b1$c$b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
