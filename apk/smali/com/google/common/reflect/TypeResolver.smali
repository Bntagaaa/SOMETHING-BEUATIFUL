.class public final Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$c;,
        Lcom/google/common/reflect/TypeResolver$d;,
        Lcom/google/common/reflect/TypeResolver$a;,
        Lcom/google/common/reflect/TypeResolver$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/reflect/TypeResolver$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/common/reflect/TypeResolver$b;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$b;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/reflect/TypeResolver$b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/google/common/reflect/e;

    invoke-direct {v0, p0, p2}, Lcom/google/common/reflect/e;-><init>(Ljava/util/HashMap;Ljava/lang/reflect/Type;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 207
    invoke-virtual {v0, p0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 238
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 240
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c([Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v0, 0x0

    .line 231
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 232
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .locals 6

    .line 121
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 291
    iget-object v1, v1, Lcom/google/common/reflect/TypeResolver$b;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 292
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/reflect/TypeResolver$c;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 295
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    instance-of v4, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_0

    .line 593
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v3, v4}, Lcom/google/common/reflect/TypeResolver$c;->a(Ljava/lang/reflect/TypeVariable;)Z

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    xor-int/lit8 v4, v4, 0x1

    .line 295
    const-string v5, "Type variable %s bound to itself"

    invoke-static {v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 298
    :cond_1
    new-instance p1, Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/common/reflect/TypeResolver$b;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 121
    invoke-direct {v0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$b;)V

    return-object v0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .line 215
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    new-instance v1, Lcom/google/common/reflect/f;

    invoke-direct {v1, p1, v0}, Lcom/google/common/reflect/f;-><init>(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)V

    .line 313
    invoke-virtual {v0, p1, v1}, Lcom/google/common/reflect/TypeResolver$b;->resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 219
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 258
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 260
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 262
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver;->b([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 264
    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/common/reflect/m;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 220
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 221
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 252
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/google/common/reflect/m;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 222
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 223
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 246
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 247
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 248
    new-instance v1, Lcom/google/common/reflect/m$i;

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->b([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver;->b([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/common/reflect/m$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1

    :cond_4
    return-object p1
.end method

.method public where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .locals 1

    .line 114
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->d(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object p1

    return-object p1
.end method
