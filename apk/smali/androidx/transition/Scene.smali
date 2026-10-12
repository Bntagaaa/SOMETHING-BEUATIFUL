.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:Landroid/view/ViewGroup;

.field public final d:Landroid/view/View;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/transition/Scene;->b:I

    .line 90
    iput-object p1, p0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/transition/Scene;->b:I

    .line 125
    iput-object p1, p0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroidx/transition/Scene;->d:Landroid/view/View;

    return-void
.end method

.method public static getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 209
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/Scene;

    return-object p0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    sget v0, Landroidx/transition/R$id;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Scene;

    if-eqz v0, :cond_1

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Landroidx/transition/Scene;

    .line 108
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, v0, Landroidx/transition/Scene;->a:Landroid/content/Context;

    .line 110
    iput-object p0, v0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    .line 111
    iput p1, v0, Landroidx/transition/Scene;->b:I

    .line 74
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 168
    iget-object v0, p0, Landroidx/transition/Scene;->d:Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    iget v2, p0, Landroidx/transition/Scene;->b:I

    if-gtz v2, :cond_0

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    if-lez v2, :cond_1

    .line 173
    iget-object v0, p0, Landroidx/transition/Scene;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/transition/Scene;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    :cond_3
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/transition/Scene;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/transition/Scene;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iput-object p1, p0, Landroidx/transition/Scene;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 250
    iput-object p1, p0, Landroidx/transition/Scene;->f:Ljava/lang/Runnable;

    return-void
.end method
