.class final Landroidx/concurrent/futures/AbstractResolvableFuture$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Landroidx/concurrent/futures/AbstractResolvableFuture$d;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 221
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$d$a;

    .line 223
    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    iput-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;->a:Ljava/lang/Throwable;

    return-void
.end method
