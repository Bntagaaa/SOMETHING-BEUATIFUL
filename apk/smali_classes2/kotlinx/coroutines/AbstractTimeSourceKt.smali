.class public final Lkotlinx/coroutines/AbstractTimeSourceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u001a\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0080\u0008\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/AbstractTimeSource;",
        "source",
        "",
        "mockTimeSource",
        "(Lkotlinx/coroutines/AbstractTimeSource;)V",
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
.field public static a:Lkotlinx/coroutines/AbstractTimeSource;


# direct methods
.method public static final synthetic access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/AbstractTimeSourceKt;->a:Lkotlinx/coroutines/AbstractTimeSource;

    return-object v0
.end method

.method public static final synthetic access$setTimeSource$p(Lkotlinx/coroutines/AbstractTimeSource;)V
    .locals 0

    .line 1
    sput-object p0, Lkotlinx/coroutines/AbstractTimeSourceKt;->a:Lkotlinx/coroutines/AbstractTimeSource;

    return-void
.end method

.method public static final mockTimeSource(Lkotlinx/coroutines/AbstractTimeSource;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/AbstractTimeSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-static {p0}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$setTimeSource$p(Lkotlinx/coroutines/AbstractTimeSource;)V

    return-void
.end method
