.class final Lcom/google/common/util/concurrent/AbstractFuture$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# static fields
.field public static final c:Lcom/google/common/util/concurrent/AbstractFuture$l;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/google/common/util/concurrent/AbstractFuture$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 188
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 179
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$l;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$b;->e(Lcom/google/common/util/concurrent/AbstractFuture$l;Ljava/lang/Thread;)V

    return-void
.end method
