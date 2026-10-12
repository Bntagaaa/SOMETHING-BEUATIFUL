.class Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/x$b;,
        Landroidx/fragment/app/x$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/x$a;
    .locals 4

    .line 3322
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3325
    :cond_0
    iget v2, v0, Landroidx/fragment/app/Fragment$e;->h:I

    :goto_0
    if-eqz p3, :cond_4

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    :goto_1
    const/4 p3, 0x0

    goto :goto_2

    .line 3297
    :cond_1
    iget p3, v0, Landroidx/fragment/app/Fragment$e;->f:I

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 3304
    :cond_3
    iget p3, v0, Landroidx/fragment/app/Fragment$e;->g:I

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 3283
    :cond_5
    iget p3, v0, Landroidx/fragment/app/Fragment$e;->d:I

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    goto :goto_1

    .line 3290
    :cond_7
    iget p3, v0, Landroidx/fragment/app/Fragment$e;->e:I

    .line 49
    :goto_2
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 55
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 57
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 60
    :cond_8
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 63
    :cond_9
    invoke-virtual {p1, v2, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 65
    new-instance p0, Landroidx/fragment/app/x$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/x$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 68
    :cond_a
    invoke-virtual {p1, v2, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 70
    new-instance p0, Landroidx/fragment/app/x$a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/x$a;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_b
    if-nez p3, :cond_12

    if-eqz v2, :cond_12

    const/16 p1, 0x1001

    if-eq v2, p1, :cond_10

    const/16 p1, 0x1003

    if-eq v2, p1, :cond_e

    const/16 p1, 0x2002

    if-eq v2, p1, :cond_c

    const/4 p1, -0x1

    const/4 p3, -0x1

    goto :goto_4

    :cond_c
    if-eqz p2, :cond_d

    .line 221
    sget p1, Landroidx/fragment/R$animator;->fragment_close_enter:I

    :goto_3
    move p3, p1

    goto :goto_4

    :cond_d
    sget p1, Landroidx/fragment/R$animator;->fragment_close_exit:I

    goto :goto_3

    :cond_e
    if-eqz p2, :cond_f

    .line 224
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_3

    :cond_f
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    goto :goto_3

    :cond_10
    if-eqz p2, :cond_11

    .line 218
    sget p1, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_3

    :cond_11
    sget p1, Landroidx/fragment/R$animator;->fragment_open_exit:I

    goto :goto_3

    :cond_12
    :goto_4
    if-eqz p3, :cond_15

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 85
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 87
    new-instance v0, Landroidx/fragment/app/x$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/x$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception p0

    .line 92
    throw p0

    .line 100
    :catch_1
    :cond_13
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 102
    new-instance v0, Landroidx/fragment/app/x$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/x$a;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_14

    .line 110
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 112
    new-instance p1, Landroidx/fragment/app/x$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/x$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 107
    :cond_14
    throw p2

    :cond_15
    :goto_5
    return-object v1
.end method
