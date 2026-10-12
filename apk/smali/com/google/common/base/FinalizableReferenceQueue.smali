.class public Lcom/google/common/base/FinalizableReferenceQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/FinalizableReferenceQueue$b;,
        Lcom/google/common/base/FinalizableReferenceQueue$a;,
        Lcom/google/common/base/FinalizableReferenceQueue$d;,
        Lcom/google/common/base/FinalizableReferenceQueue$c;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field public final b:Ljava/lang/ref/PhantomReference;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 133
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/FinalizableReferenceQueue;->d:Ljava/util/logging/Logger;

    .line 141
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue$d;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue$d;-><init>()V

    new-instance v1, Lcom/google/common/base/FinalizableReferenceQueue$a;

    invoke-direct {v1}, Lcom/google/common/base/FinalizableReferenceQueue$a;-><init>()V

    new-instance v2, Lcom/google/common/base/FinalizableReferenceQueue$b;

    invoke-direct {v2}, Lcom/google/common/base/FinalizableReferenceQueue$b;-><init>()V

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/google/common/base/FinalizableReferenceQueue$c;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 213
    aget-object v6, v4, v2

    .line 214
    invoke-interface {v6}, Lcom/google/common/base/FinalizableReferenceQueue$c;->loadFinalizer()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 348
    :try_start_0
    const-string v2, "startFinalizer"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/ref/ReferenceQueue;

    aput-object v4, v3, v0

    const-class v0, Ljava/lang/ref/PhantomReference;

    aput-object v0, v3, v1

    invoke-virtual {v6, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    sput-object v0, Lcom/google/common/base/FinalizableReferenceQueue;->e:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    .line 351
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lcom/google/common/base/FinalizableReferenceQueue;->a:Ljava/lang/ref/ReferenceQueue;

    .line 158
    new-instance v3, Ljava/lang/ref/PhantomReference;

    invoke-direct {v3, p0, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, p0, Lcom/google/common/base/FinalizableReferenceQueue;->b:Ljava/lang/ref/PhantomReference;

    .line 161
    :try_start_0
    sget-object v4, Lcom/google/common/base/FinalizableReferenceQueue;->e:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-class v6, Lcom/google/common/base/FinalizableReference;

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 166
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    sget-object v4, Lcom/google/common/base/FinalizableReferenceQueue;->d:Ljava/util/logging/Logger;

    invoke-virtual {v4, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 173
    :goto_1
    iput-boolean v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->c:Z

    return-void

    .line 164
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 188
    iget-boolean v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 200
    :try_start_0
    check-cast v0, Lcom/google/common/base/FinalizableReference;

    invoke-interface {v0}, Lcom/google/common/base/FinalizableReference;->finalizeReferent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 202
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Error cleaning up after reference."

    sget-object v3, Lcom/google/common/base/FinalizableReferenceQueue;->d:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->b:Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->enqueue()Z

    .line 179
    invoke-virtual {p0}, Lcom/google/common/base/FinalizableReferenceQueue;->a()V

    return-void
.end method
