.class Landroidx/viewpager2/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$c;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/g;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 674
    iget-object p1, p0, Landroidx/viewpager2/adapter/g;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->b(Z)V

    return-void
.end method
