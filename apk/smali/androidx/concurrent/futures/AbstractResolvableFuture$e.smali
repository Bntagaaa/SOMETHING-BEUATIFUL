.class final Landroidx/concurrent/futures/AbstractResolvableFuture$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final d:Landroidx/concurrent/futures/AbstractResolvableFuture$e;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Landroidx/concurrent/futures/AbstractResolvableFuture$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->a:Ljava/lang/Runnable;

    .line 212
    iput-object p2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
