.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/LinkedHashSet;

.field public volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->a:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->b:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->c:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .locals 2
    .param p1    # [Ljava/io/Closeable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->a:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->b:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Landroidx/lifecycle/ViewModel;->c:Z

    .line 136
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 250
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 2
    .param p1    # Ljava/io/Closeable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    iget-boolean v0, p0, Landroidx/lifecycle/ViewModel;->c:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Landroidx/lifecycle/ViewModel;->a(Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->b:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 162
    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final b(Landroidx/lifecycle/SavedStateHandleController;)V
    .locals 4

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 220
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 223
    iget-object v3, p0, Landroidx/lifecycle/ViewModel;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 225
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 227
    :goto_1
    iget-boolean v0, p0, Landroidx/lifecycle/ViewModel;->c:Z

    if-eqz v0, :cond_2

    .line 231
    invoke-static {p1}, Landroidx/lifecycle/ViewModel;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 225
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCleared()V
    .locals 0

    return-void
.end method
