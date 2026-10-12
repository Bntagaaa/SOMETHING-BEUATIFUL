.class final Lcom/google/common/util/concurrent/j$d;
.super Lcom/google/common/util/concurrent/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/j$b;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/google/common/util/concurrent/j$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/i;Ljava/util/Set;)V
    .locals 1

    .line 181
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 40
    iput-object p2, p1, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    .line 185
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lcom/google/common/util/concurrent/i;)I
    .locals 1

    .line 190
    monitor-enter p1

    .line 40
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/j;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/j;->i:I

    .line 191
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
