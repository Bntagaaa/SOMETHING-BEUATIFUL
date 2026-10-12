.class final Lcom/google/common/reflect/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/m$e;,
        Lcom/google/common/reflect/m$d;,
        Lcom/google/common/reflect/m$i;,
        Lcom/google/common/reflect/m$g;,
        Lcom/google/common/reflect/m$h;,
        Lcom/google/common/reflect/m$f;,
        Lcom/google/common/reflect/m$c;,
        Lcom/google/common/reflect/m$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/Function;

.field public static final b:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/google/common/reflect/m$a;

    invoke-direct {v0}, Lcom/google/common/reflect/m$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/m;->a:Lcom/google/common/base/Function;

    .line 65
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/m;->b:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 210
    invoke-static {v4}, Lcom/google/common/reflect/m;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 214
    instance-of p0, v4, Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 215
    move-object p0, v4

    check-cast p0, Ljava/lang/Class;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    .line 157
    :cond_0
    new-instance p0, Lcom/google/common/reflect/m$i;

    new-array v2, v1, [Ljava/lang/reflect/Type;

    new-array v0, v0, [Ljava/lang/reflect/Type;

    aput-object v4, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/google/common/reflect/m$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 5

    .line 525
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 526
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 527
    check-cast v2, Ljava/lang/Class;

    .line 528
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Primitive type \'%s\' used as %s"

    invoke-static {v3, v4, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4

    .line 177
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 179
    new-instance v1, Lcom/google/common/reflect/n;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/n;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public static d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_3

    .line 70
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 71
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 72
    array-length v3, v2

    if-gt v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    array-length v3, v2

    if-ne v3, v0, :cond_1

    .line 74
    aget-object p0, v2, v1

    invoke-static {p0}, Lcom/google/common/reflect/m;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 163
    new-instance v2, Lcom/google/common/reflect/m$i;

    new-array v3, v0, [Ljava/lang/reflect/Type;

    aput-object p0, v3, v1

    new-array p0, v0, [Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p0, v1

    invoke-direct {v2, v3, p0}, Lcom/google/common/reflect/m$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v2

    .line 76
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 77
    array-length v2, p0

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Wildcard should have only one upper bound."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/google/common/reflect/m;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 157
    new-instance v2, Lcom/google/common/reflect/m$i;

    new-array v3, v1, [Ljava/lang/reflect/Type;

    new-array v0, v0, [Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    invoke-direct {v2, v3, v0}, Lcom/google/common/reflect/m$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v2

    .line 81
    :cond_3
    sget-object v0, Lcom/google/common/reflect/m$d;->c:Lcom/google/common/reflect/m$d;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/m$d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2

    .line 150
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 328
    :cond_0
    new-instance v0, Lcom/google/common/reflect/m$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/m$g;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    .line 331
    new-instance p0, Lcom/google/common/reflect/m$h;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/m$h;-><init>(Lcom/google/common/reflect/m$g;)V

    .line 332
    const-class p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1, p0}, Lcom/google/common/reflect/Reflection;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method

.method public static varargs f(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    if-nez p0, :cond_0

    .line 101
    new-instance p0, Lcom/google/common/reflect/m$f;

    sget-object v0, Lcom/google/common/reflect/m$b;->a:Lcom/google/common/reflect/m$b;

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/m$b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/common/reflect/m$f;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object p0

    .line 94
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Owner type for unenclosed %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lcom/google/common/reflect/m$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/m$f;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
