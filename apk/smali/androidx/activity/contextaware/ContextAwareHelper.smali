.class public final Landroidx/activity/contextaware/ContextAwareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->b:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAvailableContext()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->b:Landroid/content/Context;

    return-void
.end method

.method public dispatchOnContextAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    iput-object p1, p0, Landroidx/activity/contextaware/ContextAwareHelper;->b:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/contextaware/OnContextAvailableListener;

    .line 99
    invoke-interface {v1, p1}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->b:Landroid/content/Context;

    return-object v0
.end method

.method public removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
