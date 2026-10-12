.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J3\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00028\u00002\u0008\u0010\t\u001a\u0004\u0018\u00018\u00012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u000f\u001a\u00120\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00122\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J3\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0018\"\u0004\u0008\u0002\u0010\u00152\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u000b\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004R\u0019\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n0\u001d8\u0002X\u0082\u0004R\u0013\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d8\u0002X\u0082\u0004\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;",
        "",
        "",
        "allocated",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V",
        "key",
        "getImpl",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "value",
        "Lkotlinx/coroutines/debug/internal/HashedWeakRef;",
        "weakKey0",
        "putImpl",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "rehash",
        "()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;",
        "weakRef",
        "",
        "cleanWeakRef",
        "(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V",
        "E",
        "Lkotlin/Function2;",
        "factory",
        "",
        "keyValueIterator",
        "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;",
        "Lkotlinx/atomicfu/AtomicInt;",
        "load",
        "Lkotlinx/atomicfu/AtomicArray;",
        "keys",
        "values",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final synthetic f:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

.field private volatile synthetic load$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    const-string v1, "load$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->f:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->b:I

    mul-int/lit8 p1, p2, 0x2

    .line 83
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 85
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 86
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method public static final synthetic access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I
    .locals 0

    .line 80
    iget p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    return p0
.end method

.method public static final synthetic access$getKeys(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static final synthetic access$getValues(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static synthetic putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    instance-of v2, v1, Lkotlinx/coroutines/debug/internal/g;

    if-eqz v2, :cond_1

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->f:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-static {p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$decrementSize(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)V

    return-void

    .line 110
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_0
.end method

.method public final cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/debug/internal/HashedWeakRef;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "*>;)V"
        }
    .end annotation

    .line 191
    iget v0, p1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->hash:I

    const v1, -0x61c88647

    mul-int v0, v0, v1

    .line 88
    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->b:I

    ushr-int/2addr v0, v1

    .line 0
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    .line 195
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(I)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 198
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x61c88647

    mul-int v0, v0, v1

    .line 88
    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->b:I

    ushr-int/2addr v0, v1

    .line 0
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 0
    iget-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 98
    instance-of v0, p1, Lkotlinx/coroutines/debug/internal/g;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/debug/internal/g;

    iget-object p1, p1, Lkotlinx/coroutines/debug/internal/g;->a:Ljava/lang/Object;

    :cond_1
    return-object p1

    :cond_2
    if-nez v1, :cond_3

    .line 100
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(I)V

    :cond_3
    if-nez v0, :cond_4

    .line 101
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final keyValueIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 203
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/debug/internal/HashedWeakRef;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x61c88647

    mul-int v0, v0, v1

    .line 88
    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->b:I

    ushr-int/2addr v0, v1

    const/4 v1, 0x0

    .line 0
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    .line 124
    sget-object v4, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    if-nez v3, :cond_7

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return-object v5

    :cond_0
    if-nez v1, :cond_3

    .line 118
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 129
    iget v3, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->c:I

    if-lt v1, v3, :cond_2

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 130
    invoke-virtual {v4, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-nez p3, :cond_4

    .line 134
    new-instance p3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->f:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$getWeakRefQueue$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    :cond_4
    move-object v7, p3

    .line 135
    :cond_5
    invoke-virtual {v2, v0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    move v1, v6

    move-object p3, v7

    goto :goto_0

    .line 138
    :cond_7
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 0
    :cond_8
    :goto_2
    iget-object v3, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 150
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 151
    instance-of p1, v4, Lkotlinx/coroutines/debug/internal/g;

    if-eqz p1, :cond_9

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    .line 152
    :cond_9
    invoke-virtual {v3, v0, v4, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v4

    :cond_a
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v4, :cond_9

    goto :goto_2

    :cond_b
    if-nez v2, :cond_c

    .line 143
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(I)V

    :cond_c
    if-nez v0, :cond_d

    .line 144
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public final rehash()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>.a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->f:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 163
    new-instance v2, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a:I

    if-ge v0, v1, :cond_7

    .line 0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 166
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(I)V

    .line 0
    :cond_2
    :goto_2
    iget-object v4, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 172
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 173
    instance-of v6, v5, Lkotlinx/coroutines/debug/internal/g;

    if-eqz v6, :cond_3

    .line 174
    check-cast v5, Lkotlinx/coroutines/debug/internal/g;

    iget-object v5, v5, Lkotlinx/coroutines/debug/internal/g;->a:Ljava/lang/Object;

    goto :goto_3

    .line 178
    :cond_3
    invoke-static {v5}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$mark(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/g;

    move-result-object v6

    :cond_4
    invoke-virtual {v4, v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 181
    invoke-virtual {v2, v3, v5, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v1, v3, :cond_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_7
    return-object v2
.end method
