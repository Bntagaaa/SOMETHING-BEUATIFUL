.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$j;,
        Lcom/google/common/util/concurrent/Striped$i;,
        Lcom/google/common/util/concurrent/Striped$h;,
        Lcom/google/common/util/concurrent/Striped$l;,
        Lcom/google/common/util/concurrent/Striped$g;,
        Lcom/google/common/util/concurrent/Striped$k;,
        Lcom/google/common/util/concurrent/Striped$m;,
        Lcom/google/common/util/concurrent/Striped$n;,
        Lcom/google/common/util/concurrent/Striped$o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/Supplier;

.field public static final b:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Lcom/google/common/util/concurrent/Striped$e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->a:Lcom/google/common/base/Supplier;

    .line 308
    new-instance v0, Lcom/google/common/util/concurrent/Striped$f;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$f;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->b:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped;-><init>()V

    return-void
.end method

.method public static lazyWeakLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/google/common/util/concurrent/Striped$b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$b;-><init>()V

    const/16 v1, 0x400

    if-ge p0, v1, :cond_0

    .line 235
    new-instance v1, Lcom/google/common/util/concurrent/Striped$l;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$l;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/Striped$h;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$h;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1
.end method

.method public static lazyWeakReadWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/common/util/concurrent/Striped;->b:Lcom/google/common/base/Supplier;

    const/16 v1, 0x400

    if-ge p0, v1, :cond_0

    .line 235
    new-instance v1, Lcom/google/common/util/concurrent/Striped$l;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$l;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/Striped$h;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$h;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1
.end method

.method public static lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/google/common/util/concurrent/Striped$d;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Striped$d;-><init>(I)V

    const/16 p1, 0x400

    if-ge p0, p1, :cond_0

    .line 235
    new-instance p1, Lcom/google/common/util/concurrent/Striped$l;

    invoke-direct {p1, p0, v0}, Lcom/google/common/util/concurrent/Striped$l;-><init>(ILcom/google/common/base/Supplier;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/common/util/concurrent/Striped$h;

    invoke-direct {p1, p0, v0}, Lcom/google/common/util/concurrent/Striped$h;-><init>(ILcom/google/common/base/Supplier;)V

    return-object p1
.end method

.method public static lock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/google/common/util/concurrent/Striped$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$a;-><init>()V

    .line 195
    new-instance v1, Lcom/google/common/util/concurrent/Striped$g;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$g;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1
.end method

.method public static readWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/common/util/concurrent/Striped;->a:Lcom/google/common/base/Supplier;

    .line 195
    new-instance v1, Lcom/google/common/util/concurrent/Striped$g;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Striped$g;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v1
.end method

.method public static semaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/google/common/util/concurrent/Striped$c;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Striped$c;-><init>(I)V

    .line 195
    new-instance p1, Lcom/google/common/util/concurrent/Striped$g;

    invoke-direct {p1, p0, v0}, Lcom/google/common/util/concurrent/Striped$g;-><init>(ILcom/google/common/base/Supplier;)V

    return-object p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public bulkGet(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 141
    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 142
    array-length v0, p1

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 147
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Striped;->a(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 151
    aget v2, v0, v1

    .line 152
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x1

    .line 153
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 154
    aget v3, v0, v1

    if-ne v3, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    .line 156
    aget-object v3, p1, v3

    aput-object v3, p1, v1

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 181
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method
