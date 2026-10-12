.class final Lcom/google/common/eventbus/a$b;
.super Lcom/google/common/eventbus/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lcom/google/common/eventbus/a$b;

    invoke-direct {v0}, Lcom/google/common/eventbus/a$b;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/google/common/eventbus/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 2

    .line 184
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v1, Lcom/google/common/eventbus/b;

    invoke-direct {v1, v0, p2}, Lcom/google/common/eventbus/b;-><init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/common/eventbus/c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
