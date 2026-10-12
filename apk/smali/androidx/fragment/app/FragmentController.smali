.class public Landroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/FragmentHostCallback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    return-void
.end method

.method public static createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;)",
            "Landroidx/fragment/app/FragmentController;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/FragmentController;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentHostCallback;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentController;-><init>(Landroidx/fragment/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/FragmentManager;->c(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 3

    .line 251
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    .line 3069
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3070
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3071
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v2, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x4

    .line 3072
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 367
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 3158
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 3158
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3160
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->h(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 429
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->k(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public dispatchCreate()V
    .locals 3

    .line 240
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    .line 3058
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3059
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3060
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v2, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x1

    .line 3061
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->l(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 334
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()V

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    .line 3100
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .line 379
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 3166
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 3166
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3168
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->k()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 3142
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 3142
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3144
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->l(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 416
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->n(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 440
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->o(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x5

    .line 3090
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2

    .line 356
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 3150
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 3150
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3152
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->m(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 403
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->q(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public dispatchReallyStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dispatchResume()V
    .locals 3

    .line 273
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    .line 3083
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3084
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3085
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v2, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x7

    .line 3086
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchStart()V
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    .line 3076
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->D:Z

    .line 3077
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3078
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v2, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x5

    .line 3079
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public dispatchStop()V
    .locals 3

    .line 295
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    .line 3094
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->E:Z

    .line 3095
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    .line 96
    iput-boolean v1, v2, Landroidx/fragment/app/h0;->j:Z

    const/4 v1, 0x4

    .line 3096
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->r(I)V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderRetain()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public execPendingActions()Z
    .locals 2

    .line 451
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->v(Z)Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 1834
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 1834
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p1, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object p1, p1, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 1119
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 1119
    invoke-virtual {p1}, Landroidx/fragment/app/l0;->e()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getActiveFragmentsCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 241
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    .line 241
    iget-object v0, v0, Landroidx/fragment/app/l0;->b:Ljava/util/HashMap;

    .line 241
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 3487
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/y;

    .line 135
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public reportLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManagerNonConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 2697
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 2697
    instance-of v1, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-nez v1, :cond_0

    .line 2701
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {v1, p2}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2702
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->P(Landroid/os/Parcelable;)V

    return-void

    .line 2698
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Landroidx/fragment/app/FragmentManagerNonConfig;

    check-cast p2, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 2697
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 2697
    instance-of p2, p2, Landroidx/lifecycle/ViewModelStoreOwner;

    if-nez p2, :cond_0

    .line 2701
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {p2, v1}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2702
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->P(Landroid/os/Parcelable;)V

    return-void

    .line 2698
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    throw v2
.end method

.method public restoreLoaderNonConfig(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .param p1    # Landroidx/collection/SimpleArrayMap;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public restoreSaveState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->P(Landroid/os/Parcelable;)V

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainLoaderNonConfig()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 2637
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 2637
    instance-of v1, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-nez v1, :cond_0

    .line 2641
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->d()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0

    .line 2638
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    .line 2637
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 2637
    instance-of v1, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2641
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->L:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->d()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerNonConfig;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_0
    return-object v2

    .line 2638
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->X(Ljava/lang/IllegalStateException;)V

    throw v2
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->a:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
