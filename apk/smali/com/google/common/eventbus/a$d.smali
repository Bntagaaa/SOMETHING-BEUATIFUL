.class final Lcom/google/common/eventbus/a$d;
.super Lcom/google/common/eventbus/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/a$d$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/lang/ThreadLocal;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/google/common/eventbus/a;-><init>()V

    .line 78
    new-instance v0, Lcom/google/common/eventbus/a$d$a;

    .line 79
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/google/common/eventbus/a$d;->a:Ljava/lang/ThreadLocal;

    .line 87
    new-instance v0, Lcom/google/common/eventbus/a$d$b;

    .line 88
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/google/common/eventbus/a$d;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/google/common/eventbus/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 6

    .line 97
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/google/common/eventbus/a$d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 100
    new-instance v2, Lcom/google/common/eventbus/a$d$c;

    invoke-direct {v2, p1, p2}, Lcom/google/common/eventbus/a$d$c;-><init>(Ljava/util/Iterator;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/google/common/eventbus/a$d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 103
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/eventbus/a$d$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/google/common/eventbus/a$d$c;->b:Ljava/util/Iterator;

    .line 107
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/eventbus/c;

    .line 118
    iget-object v4, p2, Lcom/google/common/eventbus/a$d$c;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v5, Lcom/google/common/eventbus/b;

    invoke-direct {v5, v3, v4}, Lcom/google/common/eventbus/b;-><init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/common/eventbus/c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 112
    :goto_1
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 114
    throw p2

    :cond_2
    return-void
.end method
