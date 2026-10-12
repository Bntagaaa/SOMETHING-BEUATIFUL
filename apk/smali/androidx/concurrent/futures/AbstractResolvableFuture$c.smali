.class final Landroidx/concurrent/futures/AbstractResolvableFuture$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

.field public static final d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/CancellationException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 243
    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 245
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/util/concurrent/CancellationException;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 248
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/util/concurrent/CancellationException;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/CancellationException;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-boolean p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Z

    .line 258
    iput-object p2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Ljava/util/concurrent/CancellationException;

    return-void
.end method
