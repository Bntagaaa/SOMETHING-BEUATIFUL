.class final Lcom/google/common/eventbus/a$c;
.super Lcom/google/common/eventbus/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/a$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/google/common/eventbus/a;-><init>()V

    .line 152
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/a$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/google/common/eventbus/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 3

    .line 156
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/eventbus/a$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/common/eventbus/a$c$a;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/eventbus/c;

    invoke-direct {v0, v2, p2}, Lcom/google/common/eventbus/a$c$a;-><init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/a$c$a;

    if-eqz p1, :cond_1

    .line 163
    iget-object p2, p1, Lcom/google/common/eventbus/a$c$a;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/eventbus/a$c$a;->b:Lcom/google/common/eventbus/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v0, Lcom/google/common/eventbus/b;

    invoke-direct {v0, p1, p2}, Lcom/google/common/eventbus/b;-><init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/common/eventbus/c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method
