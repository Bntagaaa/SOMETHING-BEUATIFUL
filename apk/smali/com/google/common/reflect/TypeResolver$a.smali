.class final Lcom/google/common/reflect/TypeResolver$a;
.super Lcom/google/common/reflect/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    .line 374
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$a;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static f(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .line 381
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v0, Lcom/google/common/reflect/TypeResolver$a;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$a;-><init>()V

    const/4 v1, 0x1

    .line 383
    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 384
    iget-object p0, v0, Lcom/google/common/reflect/TypeResolver$a;->b:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 390
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final c(Ljava/lang/reflect/ParameterizedType;)V
    .locals 13

    const/4 v0, 0x1

    .line 395
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 396
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 397
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 398
    array-length v4, v2

    array-length v5, v3

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v4, 0x0

    .line 399
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_8

    .line 400
    new-instance v5, Lcom/google/common/reflect/TypeResolver$c;

    aget-object v7, v2, v4

    invoke-direct {v5, v7}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    aget-object v7, v3, v4

    .line 417
    iget-object v8, p0, Lcom/google/common/reflect/TypeResolver$a;->b:Ljava/util/HashMap;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_6

    :cond_1
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_6

    .line 592
    instance-of v10, v9, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_2

    .line 593
    move-object v11, v9

    check-cast v11, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v5, v11}, Lcom/google/common/reflect/TypeResolver$c;->a(Ljava/lang/reflect/TypeVariable;)Z

    move-result v11

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x0

    if-eqz v11, :cond_4

    :goto_4
    if-eqz v7, :cond_7

    .line 580
    instance-of v5, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_3

    .line 581
    new-instance v5, Lcom/google/common/reflect/TypeResolver$c;

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v5, v7}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_5

    :cond_3
    move-object v5, v12

    .line 432
    :goto_5
    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/reflect/Type;

    goto :goto_4

    :cond_4
    if-eqz v10, :cond_5

    .line 581
    new-instance v12, Lcom/google/common/reflect/TypeResolver$c;

    check-cast v9, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v12, v9}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    .line 426
    :cond_5
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Type;

    goto :goto_2

    .line 436
    :cond_6
    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_6
    add-int/2addr v4, v0

    goto :goto_1

    .line 402
    :cond_8
    new-array v2, v0, [Ljava/lang/reflect/Type;

    aput-object v1, v2, v6

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 403
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    aput-object p1, v0, v6

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final d(Ljava/lang/reflect/TypeVariable;)V
    .locals 0

    .line 408
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final e(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 413
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method
