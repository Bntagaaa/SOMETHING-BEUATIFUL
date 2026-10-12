.class Landroidx/transition/ChangeTransform$c;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroidx/transition/f;


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 7
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 528
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroidx/transition/ChangeTransform$c;->a:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-ne p1, v4, :cond_1

    .line 113
    sget-boolean p1, Landroidx/transition/h;->g:Z

    if-nez p1, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Landroidx/transition/h;->a()V

    .line 116
    sget-object p1, Landroidx/transition/h;->b:Ljava/lang/Class;

    const-string v4, "removeGhost"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Landroidx/transition/h;->f:Ljava/lang/reflect/Method;

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    const-string v4, "GhostViewApi21"

    const-string v5, "Failed to retrieve removeGhost method"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_0
    sput-boolean v1, Landroidx/transition/h;->g:Z

    .line 59
    :cond_0
    sget-object p1, Landroidx/transition/h;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    .line 61
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 201
    :cond_1
    sget p1, Landroidx/transition/i;->g:I

    .line 147
    sget p1, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {v2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/i;

    if-eqz p1, :cond_2

    .line 203
    iget v0, p1, Landroidx/transition/i;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/transition/i;->d:I

    if-gtz v0, :cond_2

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/transition/g;

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 530
    :catch_2
    :cond_2
    :goto_1
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 531
    sget p1, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 536
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->b:Landroidx/transition/f;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 541
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->b:Landroidx/transition/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method
