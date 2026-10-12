.class public Landroidx/arch/core/executor/ArchTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static volatile c:Landroidx/arch/core/executor/ArchTaskExecutor;

.field public static final d:Landroidx/arch/core/executor/a;

.field public static final e:Landroidx/arch/core/executor/a;


# instance fields
.field public a:Landroidx/arch/core/executor/TaskExecutor;

.field public final b:Landroidx/arch/core/executor/DefaultTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroidx/arch/core/executor/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/arch/core/executor/a;-><init>(I)V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->d:Landroidx/arch/core/executor/a;

    .line 46
    new-instance v0, Landroidx/arch/core/executor/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/arch/core/executor/a;-><init>(I)V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->e:Landroidx/arch/core/executor/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    .line 50
    new-instance v0, Landroidx/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroidx/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->b:Landroidx/arch/core/executor/DefaultTaskExecutor;

    .line 51
    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/TaskExecutor;

    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 103
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->e:Landroidx/arch/core/executor/a;

    return-object v0
.end method

.method public static getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 61
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 64
    :cond_0
    const-class v0, Landroidx/arch/core/executor/ArchTaskExecutor;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    invoke-direct {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Landroidx/arch/core/executor/ArchTaskExecutor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 98
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->d:Landroidx/arch/core/executor/a;

    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroidx/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V
    .locals 0
    .param p1    # Landroidx/arch/core/executor/TaskExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->b:Landroidx/arch/core/executor/DefaultTaskExecutor;

    :cond_0
    iput-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/TaskExecutor;

    return-void
.end method
