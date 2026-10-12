.class final Lcom/google/common/util/concurrent/AbstractFuture$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/google/common/util/concurrent/AbstractFuture$c;

.field public static final d:Lcom/google/common/util/concurrent/AbstractFuture$c;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture$c;->d:Lcom/google/common/util/concurrent/AbstractFuture$c;

    .line 296
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture$c;->c:Lcom/google/common/util/concurrent/AbstractFuture$c;

    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->d:Lcom/google/common/util/concurrent/AbstractFuture$c;

    .line 299
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->c:Lcom/google/common/util/concurrent/AbstractFuture$c;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/RuntimeException;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Z

    .line 308
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/RuntimeException;

    return-void
.end method
