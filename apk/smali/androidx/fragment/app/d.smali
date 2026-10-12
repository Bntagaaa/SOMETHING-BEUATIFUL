.class Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Landroidx/fragment/app/b1$c;

.field public final synthetic c:Landroidx/fragment/app/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroidx/fragment/app/b1$c;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/d;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/b1$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/b1$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 743
    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/b1$c$b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
