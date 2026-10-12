.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Ljava/lang/reflect/Constructor;

.field public static final f:Ljava/lang/reflect/Field;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/ref/PhantomReference;

.field public final c:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 48
    const-class v1, Ljava/lang/Thread;

    const-class v2, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/internal/Finalizer;->d:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 232
    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/ThreadGroup;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v3, v2

    .line 120
    :goto_0
    sput-object v3, Lcom/google/common/base/internal/Finalizer;->e:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_0

    .line 217
    :try_start_1
    const-string v3, "inheritableThreadLocals"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    goto :goto_1

    .line 221
    :catchall_1
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    sget-object v3, Lcom/google/common/base/internal/Finalizer;->d:Ljava/util/logging/Logger;

    invoke-virtual {v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_1
    sput-object v2, Lcom/google/common/base/internal/Finalizer;->f:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer;->c:Ljava/lang/ref/ReferenceQueue;

    .line 133
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer;->a:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object p3, p0, Lcom/google/common/base/internal/Finalizer;->b:Ljava/lang/ref/PhantomReference;

    return-void
.end method

.method public static startFinalizer(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.base.FinalizableReference"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v1, Lcom/google/common/base/internal/Finalizer;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/base/internal/Finalizer;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V

    .line 79
    const-class p0, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 81
    sget-object p1, Lcom/google/common/base/internal/Finalizer;->d:Ljava/util/logging/Logger;

    const/4 p2, 0x0

    sget-object v2, Lcom/google/common/base/internal/Finalizer;->e:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x0

    .line 87
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v1, v4, v0

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x4

    aput-object v3, v4, v5

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 89
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failed to create a thread without inherited thread-local values"

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v2, p2

    :goto_0
    if-nez v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p2, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    :try_start_1
    sget-object p0, Lcom/google/common/base/internal/Finalizer;->f:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_2

    .line 100
    invoke-virtual {p0, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 103
    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v0, "Failed to clear thread local values inherited by reference finalizer thread."

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    .line 75
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected com.google.common.base.FinalizableReference."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/ref/Reference;)Z
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    :try_start_0
    const-string v2, "finalizeReferent"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 173
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->b:Ljava/lang/ref/PhantomReference;

    if-ne p1, v2, :cond_2

    return v1

    .line 181
    :cond_2
    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 183
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    sget-object v4, Lcom/google/common/base/internal/Finalizer;->d:Ljava/util/logging/Logger;

    invoke-virtual {v4, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_1
    iget-object p1, p0, Lcom/google/common/base/internal/Finalizer;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public run()V
    .locals 1

    .line 146
    :catch_0
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/internal/Finalizer;->a(Ljava/lang/ref/Reference;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void
.end method
