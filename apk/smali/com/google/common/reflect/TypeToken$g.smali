.class abstract Lcom/google/common/reflect/TypeToken$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/reflect/TypeToken$g$a;

.field public static final b:Lcom/google/common/reflect/TypeToken$g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1302
    new-instance v0, Lcom/google/common/reflect/TypeToken$g$a;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$g$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$g;->a:Lcom/google/common/reflect/TypeToken$g$a;

    .line 1321
    new-instance v0, Lcom/google/common/reflect/TypeToken$g$b;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$g$b;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$g;->b:Lcom/google/common/reflect/TypeToken$g$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1300
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/HashMap;)I
    .locals 3

    .line 1377
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1383
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$g;->d(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    .line 1384
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$g;->c(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1385
    invoke-virtual {p0, v2, p2}, Lcom/google/common/reflect/TypeToken$g;->a(Ljava/lang/Object;Ljava/util/HashMap;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1387
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1389
    invoke-virtual {p0, v1, p2}, Lcom/google/common/reflect/TypeToken$g;->a(Ljava/lang/Object;Ljava/util/HashMap;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public b(Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableList;
    .locals 2

    .line 1367
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1368
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1369
    invoke-virtual {p0, v1, v0}, Lcom/google/common/reflect/TypeToken$g;->a(Ljava/lang/Object;Ljava/util/HashMap;)I

    goto :goto_0

    .line 1371
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object p1

    .line 1402
    new-instance v1, Lcom/google/common/reflect/k;

    invoke-direct {v1, p1, v0}, Lcom/google/common/reflect/k;-><init>(Lcom/google/common/collect/Ordering;Ljava/util/HashMap;)V

    .line 1409
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Iterable;
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Class;
.end method

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Object;
.end method
