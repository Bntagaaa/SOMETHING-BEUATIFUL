.class final Lkotlinx/coroutines/internal/ClassValueCtorCache;
.super Lkotlinx/coroutines/internal/CtorCache;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007j\u0002`\u00082\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ClassValueCtorCache;",
        "Lkotlinx/coroutines/internal/CtorCache;",
        "<init>",
        "()V",
        "Ljava/lang/Class;",
        "",
        "key",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/Ctor;",
        "get",
        "(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;",
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

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/ClassValueCtorCache;

.field public static final b:Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ClassValueCtorCache;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->a:Lkotlinx/coroutines/internal/ClassValueCtorCache;

    .line 103
    new-instance v0, Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->b:Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lkotlinx/coroutines/internal/CtorCache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 110
    sget-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->b:Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/u;->a(Lkotlinx/coroutines/internal/ClassValueCtorCache$cache$1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method
