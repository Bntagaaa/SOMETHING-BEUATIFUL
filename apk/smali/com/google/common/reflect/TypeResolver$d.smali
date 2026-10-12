.class Lcom/google/common/reflect/TypeResolver$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/google/common/reflect/TypeResolver$d;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 449
    new-instance v0, Lcom/google/common/reflect/TypeResolver$d;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$d;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeResolver$d;->b:Lcom/google/common/reflect/TypeResolver$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 454
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$d;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 7

    .line 462
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object p1

    .line 466
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    return-object p1

    .line 469
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_2

    .line 470
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 527
    new-instance v0, Lcom/google/common/reflect/TypeResolver$d;

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$d;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 472
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver$d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 471
    invoke-static {p1}, Lcom/google/common/reflect/m;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 474
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    .line 475
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 476
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 478
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    .line 479
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 480
    aget-object v5, v2, v4

    .line 507
    new-instance v6, Lcom/google/common/reflect/g;

    invoke-direct {v6, v1, v5}, Lcom/google/common/reflect/g;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V

    .line 480
    aget-object v5, v3, v4

    invoke-virtual {v6, v5}, Lcom/google/common/reflect/TypeResolver$d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 527
    :cond_3
    new-instance v2, Lcom/google/common/reflect/TypeResolver$d;

    invoke-direct {v2, v1}, Lcom/google/common/reflect/TypeResolver$d;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 483
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 534
    :cond_4
    invoke-virtual {v2, p1}, Lcom/google/common/reflect/TypeResolver$d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 482
    :goto_1
    invoke-static {p1, v0, v3}, Lcom/google/common/reflect/m;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 487
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    .line 488
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 489
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 490
    array-length v1, v1

    if-nez v1, :cond_6

    .line 491
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$d;->b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    :cond_6
    return-object p1

    .line 497
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "must have been one of the known types"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capture#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 502
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-of ? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    const-class v1, Lcom/google/common/reflect/TypeResolver$d;

    invoke-static {v1, v0, p1}, Lcom/google/common/reflect/m;->e(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    return-object p1
.end method
