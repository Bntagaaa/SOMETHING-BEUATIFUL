.class public abstract synthetic Lcom/google/appinventor/components/runtime/fcm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/stream/DoubleStream;)[D
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Ljava/util/stream/IntStream;)[I
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Ljava/util/stream/LongStream;)[J
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/concurrent/CompletionException;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/stream/Stream;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/stream/DoubleStream;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/util/stream/IntStream;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/stream/LongStream;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/Iterator;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-interface {p0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionException;
    .locals 0

    check-cast p0, Ljava/util/concurrent/CompletionException;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/function/BiFunction;
    .locals 0

    check-cast p0, Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/util/stream/Collector;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic o(Lg/a;)Ljava/util/stream/Stream;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p()V
    .locals 1

    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    return-void
.end method

.method public static bridge synthetic q(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    return-void
.end method

.method public static bridge synthetic r(Landroid/app/Notification$MessagingStyle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/concurrent/CompletionStage;Lkotlinx/coroutines/future/e;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    return-void
.end method

.method public static bridge synthetic x(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/concurrent/CompletionException;

    return p0
.end method

.method public static bridge synthetic y(Ljava/util/Optional;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/concurrent/CompletableFuture;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    return p0
.end method
