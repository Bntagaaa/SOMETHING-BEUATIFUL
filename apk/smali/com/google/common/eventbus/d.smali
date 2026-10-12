.class final Lcom/google/common/eventbus/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/d$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/common/cache/LoadingCache;

.field public static final d:Lcom/google/common/cache/LoadingCache;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;

.field public final b:Lcom/google/common/eventbus/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 148
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/d$a;

    invoke-direct {v1}, Lcom/google/common/eventbus/d$a;-><init>()V

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/d;->c:Lcom/google/common/cache/LoadingCache;

    .line 203
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/d$b;

    invoke-direct {v1}, Lcom/google/common/eventbus/d$b;-><init>()V

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/d;->d:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/d;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/EventBus;

    iput-object p1, p0, Lcom/google/common/eventbus/d;->b:Lcom/google/common/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/HashMultimap;
    .locals 6

    .line 162
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/google/common/eventbus/d;->c:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v2, v1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    .line 164
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 165
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 166
    aget-object v3, v3, v4

    .line 127
    const-class v4, Lcom/google/common/eventbus/AllowConcurrentEvents;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/eventbus/d;->b:Lcom/google/common/eventbus/EventBus;

    if-eqz v4, :cond_0

    .line 39
    new-instance v4, Lcom/google/common/eventbus/c;

    invoke-direct {v4, v5, p1, v2}, Lcom/google/common/eventbus/c;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/google/common/eventbus/c$a;

    .line 35
    invoke-direct {v4, v5, p1, v2}, Lcom/google/common/eventbus/c;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 167
    :goto_1
    invoke-interface {v0, v3, v4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
