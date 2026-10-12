.class abstract Lcom/google/common/util/concurrent/z;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Runnable;

.field public static final b:Ljava/lang/Runnable;

.field public static final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/google/common/util/concurrent/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/z$b;-><init>(I)V

    sput-object v0, Lcom/google/common/util/concurrent/z;->a:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lcom/google/common/util/concurrent/z$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/z$b;-><init>(I)V

    sput-object v0, Lcom/google/common/util/concurrent/z;->b:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/z$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/z$b;-><init>(I)V

    sput-object v0, Lcom/google/common/util/concurrent/z;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public final b()V
    .locals 4

    .line 164
    sget-object v0, Lcom/google/common/util/concurrent/z;->c:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/common/util/concurrent/z;->a:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 165
    instance-of v3, v2, Ljava/lang/Thread;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/common/util/concurrent/z;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-ne v1, v0, :cond_1

    .line 175
    check-cast v2, Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    return-void

    :catchall_0
    move-exception v3

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-ne v1, v0, :cond_0

    .line 175
    check-cast v2, Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    :cond_0
    throw v3

    :cond_1
    return-void
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final run()V
    .locals 12

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_d

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/z;->c()Z

    move-result v2

    .line 68
    sget-object v3, Lcom/google/common/util/concurrent/z;->b:Ljava/lang/Runnable;

    sget-object v4, Lcom/google/common/util/concurrent/z;->a:Ljava/lang/Runnable;

    sget-object v5, Lcom/google/common/util/concurrent/z;->c:Ljava/lang/Runnable;

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_9

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/z;->d()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v9

    .line 75
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 93
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-eq v4, v3, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_8

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :cond_2
    :goto_1
    add-int/2addr v11, v7

    if-le v11, v6, :cond_6

    if-eq v4, v5, :cond_3

    .line 103
    invoke-virtual {p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 115
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    .line 116
    :goto_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    .line 119
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v2, :cond_12

    .line 133
    invoke-virtual {p0, v1, v9}, Lcom/google/common/util/concurrent/z;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_9
    move-object v9, v1

    .line 75
    :goto_6
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 93
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-eq v4, v3, :cond_b

    if-ne v4, v5, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v10, :cond_11

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    :cond_b
    :goto_8
    add-int/2addr v11, v7

    if-le v11, v6, :cond_f

    if-eq v4, v5, :cond_c

    .line 103
    invoke-virtual {p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 115
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v10, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v10, 0x1

    .line 116
    :goto_a
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_b

    .line 119
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_10
    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_7

    :cond_11
    :goto_c
    if-nez v2, :cond_12

    .line 133
    invoke-virtual {p0, v9, v1}, Lcom/google/common/util/concurrent/z;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_12
    :goto_d
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 185
    sget-object v1, Lcom/google/common/util/concurrent/z;->a:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    .line 186
    const-string v0, "running=[DONE]"

    goto :goto_0

    .line 187
    :cond_0
    sget-object v1, Lcom/google/common/util/concurrent/z;->b:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_1

    .line 188
    const-string v0, "running=[INTERRUPTED]"

    goto :goto_0

    .line 189
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running=[RUNNING ON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    .line 195
    :goto_0
    const-string v1, ", "

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
