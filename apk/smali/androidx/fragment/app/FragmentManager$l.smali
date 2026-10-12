.class Landroidx/fragment/app/FragmentManager$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/Fragment$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroidx/fragment/app/a;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a;Z)V
    .locals 0

    .line 3553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3554
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManager$l;->a:Z

    .line 3555
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$l;->b:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 3596
    iget v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3597
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$l;->b:Landroidx/fragment/app/a;

    .line 3598
    iget-object v4, v3, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    .line 3599
    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->p(Landroidx/fragment/app/FragmentManager$l;)V

    if-eqz v0, :cond_1

    .line 3418
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    .line 3421
    :cond_2
    iget-boolean v7, v7, Landroidx/fragment/app/Fragment$e;->w:Z

    :goto_2
    if-eqz v7, :cond_1

    .line 3601
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    :cond_3
    xor-int/2addr v0, v2

    .line 3604
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager$l;->a:Z

    invoke-virtual {v4, v3, v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->h(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 3586
    iget v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .line 3565
    iget v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    if-eqz v0, :cond_0

    return-void

    .line 3569
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$l;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->R()V

    return-void
.end method

.method public startListening()V
    .locals 1

    .line 3579
    iget v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$l;->c:I

    return-void
.end method
