.class Lcom/google/common/eventbus/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/common/eventbus/c;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/eventbus/b;->b:Lcom/google/common/eventbus/c;

    iput-object p2, p0, Lcom/google/common/eventbus/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/google/common/eventbus/b;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/eventbus/b;->b:Lcom/google/common/eventbus/c;

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/common/eventbus/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 35
    iget-object v3, v1, Lcom/google/common/eventbus/c;->a:Lcom/google/common/eventbus/EventBus;

    .line 74
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 102
    new-instance v4, Lcom/google/common/eventbus/SubscriberExceptionContext;

    iget-object v5, v1, Lcom/google/common/eventbus/c;->c:Ljava/lang/reflect/Method;

    iget-object v6, v1, Lcom/google/common/eventbus/c;->a:Lcom/google/common/eventbus/EventBus;

    iget-object v1, v1, Lcom/google/common/eventbus/c;->b:Ljava/lang/Object;

    invoke-direct {v4, v6, v0, v1, v5}, Lcom/google/common/eventbus/SubscriberExceptionContext;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_1
    iget-object v0, v3, Lcom/google/common/eventbus/EventBus;->c:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    invoke-interface {v0, v2, v4}, Lcom/google/common/eventbus/SubscriberExceptionHandler;->handleException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 173
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Exception %s thrown while handling exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 175
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    sget-object v3, Lcom/google/common/eventbus/EventBus;->f:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
