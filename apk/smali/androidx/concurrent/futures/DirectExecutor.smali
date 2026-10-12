.class public final enum Landroidx/concurrent/futures/DirectExecutor;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/concurrent/futures/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

.field public static final synthetic a:[Landroidx/concurrent/futures/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 31
    new-instance v1, Landroidx/concurrent/futures/DirectExecutor;

    .line 30
    const-string v2, "INSTANCE"

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    const/4 v2, 0x1

    .line 29
    new-array v2, v2, [Landroidx/concurrent/futures/DirectExecutor;

    aput-object v1, v2, v0

    sput-object v2, Landroidx/concurrent/futures/DirectExecutor;->a:[Landroidx/concurrent/futures/DirectExecutor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/concurrent/futures/DirectExecutor;
    .locals 1

    .line 29
    const-class v0, Landroidx/concurrent/futures/DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/concurrent/futures/DirectExecutor;

    return-object p0
.end method

.method public static values()[Landroidx/concurrent/futures/DirectExecutor;
    .locals 1

    .line 29
    sget-object v0, Landroidx/concurrent/futures/DirectExecutor;->a:[Landroidx/concurrent/futures/DirectExecutor;

    invoke-virtual {v0}, [Landroidx/concurrent/futures/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/concurrent/futures/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "DirectExecutor"

    return-object v0
.end method
