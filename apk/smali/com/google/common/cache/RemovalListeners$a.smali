.class final Lcom/google/common/cache/RemovalListeners$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/RemovalListeners;->asynchronous(Lcom/google/common/cache/RemovalListener;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/RemovalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/RemovalListener<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lcom/google/common/cache/RemovalListener;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/RemovalListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/cache/RemovalListeners$a;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/cache/RemovalListeners$a;->b:Lcom/google/common/cache/RemovalListener;

    return-void
.end method


# virtual methods
.method public onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/RemovalNotification<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/common/cache/RemovalListeners$a$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/RemovalListeners$a$a;-><init>(Lcom/google/common/cache/RemovalListeners$a;Lcom/google/common/cache/RemovalNotification;)V

    iget-object p1, p0, Lcom/google/common/cache/RemovalListeners$a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
