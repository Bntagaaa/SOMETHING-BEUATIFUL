.class Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/SimpleTimeLimiter;->newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/concurrent/TimeUnit;

.field public final synthetic d:Ljava/util/HashSet;

.field public final synthetic e:Lcom/google/common/util/concurrent/SimpleTimeLimiter;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/HashSet;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->e:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

    iput-object p2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->a:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->b:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    new-instance p1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a$a;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a$a;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 101
    iget-object p3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->d:Ljava/util/HashSet;

    .line 102
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 48
    iget-object p3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->e:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-wide v1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->b:J

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a(J)V

    .line 123
    iget-object p3, p3, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 128
    :try_start_0
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    .line 130
    :try_start_1
    invoke-interface {p1, p3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 131
    throw p2

    .line 134
    :cond_0
    invoke-static {p1, v1, v2, v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 139
    :goto_0
    invoke-interface {p1, p3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 140
    new-instance p1, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 137
    :goto_1
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->b(Ljava/lang/Exception;Z)V

    const/4 p1, 0x0

    throw p1
.end method
