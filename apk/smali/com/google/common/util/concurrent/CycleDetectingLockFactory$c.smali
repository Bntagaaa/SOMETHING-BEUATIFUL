.class final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

.field public final synthetic b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Z)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 741
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 742
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    return-void
.end method


# virtual methods
.method public getLockGraphNode()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    return-object v0
.end method

.method public isAcquiredByCurrentThread()Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 763
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 766
    throw v0
.end method

.method public lockInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 773
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 776
    throw v0
.end method

.method public tryLock()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 783
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 786
    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 793
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 796
    throw p1
.end method

.method public unlock()V
    .locals 1

    .line 802
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    .line 805
    throw v0
.end method
