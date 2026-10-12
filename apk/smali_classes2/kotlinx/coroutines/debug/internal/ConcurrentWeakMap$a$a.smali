.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0008\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00028\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;",
        "E",
        "",
        "Lkotlin/Function2;",
        "factory",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/functions/Function2;)V",
        "",
        "hasNext",
        "()Z",
        "next",
        "()Ljava/lang/Object;",
        "",
        "remove",
        "()Ljava/lang/Void;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function2;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final synthetic e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:Lkotlin/jvm/functions/Function2;

    const/4 p1, -0x1

    .line 206
    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    .line 210
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 213
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 214
    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->access$getKeys(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c:Ljava/lang/Object;

    .line 215
    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->access$getValues(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 216
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/g;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/debug/internal/g;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/g;->a:Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_0

    .line 218
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->d:Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 224
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 227
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "key"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->d:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, "value"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a()V

    return-object v0

    .line 227
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 231
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$noImpl()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->remove()Ljava/lang/Void;

    return-void
.end method
