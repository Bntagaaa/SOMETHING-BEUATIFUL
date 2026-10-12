.class Landroidx/fragment/app/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Landroidx/lifecycle/ViewModelStore;

.field public c:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public d:Landroidx/lifecycle/LifecycleRegistry;

.field public e:Landroidx/savedstate/SavedStateRegistryController;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroidx/fragment/app/x0;->d:Landroidx/lifecycle/LifecycleRegistry;

    .line 45
    iput-object v0, p0, Landroidx/fragment/app/x0;->e:Landroidx/savedstate/SavedStateRegistryController;

    .line 48
    iput-object p1, p0, Landroidx/fragment/app/x0;->a:Landroidx/fragment/app/Fragment;

    .line 49
    iput-object p2, p0, Landroidx/fragment/app/x0;->b:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/x0;->d:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/fragment/app/x0;->d:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/x0;->d:Landroidx/lifecycle/LifecycleRegistry;

    .line 65
    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x0;->e:Landroidx/savedstate/SavedStateRegistryController;

    :cond_0
    return-void
.end method

.method public final synthetic getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/HasDefaultViewModelProviderFactory;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/fragment/app/x0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    .line 104
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->V:Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iput-object v1, p0, Landroidx/fragment/app/x0;->c:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v1

    .line 109
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/x0;->c:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_3

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 113
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 114
    check-cast v1, Landroid/app/Application;

    goto :goto_1

    .line 117
    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 120
    :goto_1
    new-instance v2, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 123
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v2, v1, p0, v0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/x0;->c:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 126
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/x0;->c:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/x0;->b()V

    .line 80
    iget-object v0, p0, Landroidx/fragment/app/x0;->d:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/x0;->b()V

    .line 133
    iget-object v0, p0, Landroidx/fragment/app/x0;->e:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/x0;->b()V

    .line 56
    iget-object v0, p0, Landroidx/fragment/app/x0;->b:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
