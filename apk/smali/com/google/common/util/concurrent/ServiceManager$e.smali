.class final Lcom/google/common/util/concurrent/ServiceManager$e;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/Service;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 760
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    .line 762
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 6

    .line 808
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$f;

    if-eqz v0, :cond_1

    .line 812
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    instance-of v2, v1, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v2, :cond_0

    .line 124
    sget-object v2, Lcom/google/common/util/concurrent/ServiceManager;->c:Ljava/util/logging/Logger;

    .line 814
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has failed in the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    :cond_0
    sget-object p2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$f;->d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V

    :cond_1
    return-void
.end method

.method public running()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$f;

    if-eqz v0, :cond_0

    .line 780
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/ServiceManager$f;->d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V

    :cond_0
    return-void
.end method

.method public starting()V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$f;

    if-eqz v0, :cond_0

    .line 769
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/ServiceManager$f;->d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V

    .line 770
    instance-of v0, v3, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->c:Ljava/util/logging/Logger;

    .line 771
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Starting {0}."

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$f;

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/common/util/concurrent/ServiceManager$f;->d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V

    :cond_0
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 7

    .line 794
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$f;

    if-eqz v0, :cond_1

    .line 796
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$e;->a:Lcom/google/common/util/concurrent/Service;

    instance-of v2, v1, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v2, :cond_0

    .line 124
    sget-object v2, Lcom/google/common/util/concurrent/ServiceManager;->c:Ljava/util/logging/Logger;

    .line 797
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Service {0} has terminated. Previous state was: {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    :cond_0
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/common/util/concurrent/ServiceManager$f;->d(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V

    :cond_1
    return-void
.end method
