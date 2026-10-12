.class public final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/Symbol;

.field public static final b:Lkotlinx/coroutines/debug/internal/g;

.field public static final c:Lkotlinx/coroutines/debug/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 250
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REHASH"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 251
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->b:Lkotlinx/coroutines/debug/internal/g;

    .line 252
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->c:Lkotlinx/coroutines/debug/internal/g;

    return-void
.end method

.method public static final synthetic access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->a:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final access$mark(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/g;
    .locals 1

    if-nez p0, :cond_0

    .line 272
    sget-object p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->b:Lkotlinx/coroutines/debug/internal/g;

    return-object p0

    .line 273
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->c:Lkotlinx/coroutines/debug/internal/g;

    return-object p0

    .line 274
    :cond_1
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final access$noImpl()Ljava/lang/Void;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
