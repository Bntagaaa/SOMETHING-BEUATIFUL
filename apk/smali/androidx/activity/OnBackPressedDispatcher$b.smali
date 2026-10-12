.class Landroidx/activity/OnBackPressedDispatcher$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroidx/activity/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/Lifecycle;

.field public final b:Landroidx/activity/OnBackPressedCallback;

.field public c:Landroidx/activity/OnBackPressedDispatcher$c;

.field public final synthetic d:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$b;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 292
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/lifecycle/Lifecycle;

    .line 293
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedCallback;

    .line 294
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->a:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 116
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedCallback;

    iget-object v0, v0, Landroidx/activity/OnBackPressedCallback;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->c:Landroidx/activity/OnBackPressedDispatcher$c;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Landroidx/activity/a;->cancel()V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->c:Landroidx/activity/OnBackPressedDispatcher$c;

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 300
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 301
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$b;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 168
    iget-object p2, p1, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$b;->b:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$c;

    invoke-direct {p2, p1, v0}, Landroidx/activity/OnBackPressedDispatcher$c;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/OnBackPressedCallback;)V

    .line 112
    iget-object v1, v0, Landroidx/activity/OnBackPressedCallback;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    .line 173
    iget-object p1, p1, Landroidx/activity/OnBackPressedDispatcher;->c:Landroidx/activity/g;

    .line 120
    iput-object p1, v0, Landroidx/activity/OnBackPressedCallback;->c:Landroidx/activity/g;

    .line 301
    :cond_0
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$b;->c:Landroidx/activity/OnBackPressedDispatcher$c;

    return-void

    .line 302
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    .line 304
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$b;->c:Landroidx/activity/OnBackPressedDispatcher$c;

    if-eqz p1, :cond_3

    .line 305
    invoke-interface {p1}, Landroidx/activity/a;->cancel()V

    return-void

    .line 307
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    .line 308
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$b;->cancel()V

    :cond_3
    return-void
.end method
