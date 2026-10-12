.class Landroidx/loader/app/LoaderManagerImpl;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManagerImpl$b;,
        Landroidx/loader/app/LoaderManagerImpl$a;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field public static c:Z = false


# instance fields
.field public final a:Landroidx/lifecycle/LifecycleOwner;

.field public final b:Landroidx/loader/app/LoaderManagerImpl$b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    .line 371
    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    .line 372
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 292
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    sget-object v0, Landroidx/loader/app/LoaderManagerImpl$b;->f:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p1, p2, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p2, Landroidx/loader/app/LoaderManagerImpl$b;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroidx/loader/app/LoaderManagerImpl$b;

    .line 373
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;
    .locals 6

    .line 382
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    const-string v1, "  Created new loader "

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 299
    :try_start_0
    iput-boolean v3, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    .line 383
    invoke-interface {p3, p1, p2}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 388
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 394
    :cond_1
    :goto_0
    new-instance v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v2, p1, p2, v3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V

    .line 395
    sget-boolean p2, Landroidx/loader/app/LoaderManagerImpl;->c:Z

    if-eqz p2, :cond_2

    const-string p2, "LoaderManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    iget-object p2, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    .line 311
    invoke-virtual {p2, p1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iput-boolean v4, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    .line 98
    new-instance p1, Landroidx/loader/app/LoaderManagerImpl$a;

    iget-object p2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/content/Loader;

    invoke-direct {p1, p2, p3}, Landroidx/loader/app/LoaderManagerImpl$a;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 100
    iget-object p3, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2, p3, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    iget-object p4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p:Landroidx/loader/app/LoaderManagerImpl$a;

    if-eqz p4, :cond_3

    .line 103
    invoke-virtual {v2, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 105
    :cond_3
    iput-object p3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 106
    iput-object p1, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p:Landroidx/loader/app/LoaderManagerImpl$a;

    return-object p2

    .line 385
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object returned from onCreateLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :goto_1
    iput-boolean v4, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    .line 398
    throw p1
.end method

.method public destroyLoader(I)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-boolean v1, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    if-nez v1, :cond_3

    .line 456
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 460
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v1, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 463
    invoke-virtual {v1, v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->d(Z)Landroidx/loader/content/Loader;

    .line 320
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    .line 320
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    :cond_1
    return-void

    .line 457
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "destroyLoader must be called on the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLoader(I)Landroidx/loader/content/Loader;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-boolean v1, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    if-nez v1, :cond_1

    .line 316
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/content/Loader;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 472
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasRunningLoaders()Z
    .locals 6

    .line 324
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    .line 324
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 326
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 125
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p:Landroidx/loader/app/LoaderManagerImpl$a;

    if-eqz v4, :cond_1

    .line 255
    iget-boolean v4, v4, Landroidx/loader/app/LoaderManagerImpl$a;->c:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-boolean v1, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    if-nez v1, :cond_5

    .line 411
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 316
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 417
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->c:Z

    const-string v2, "LoaderManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initLoader in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/loader/app/LoaderManagerImpl;->a(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object p1

    return-object p1

    .line 423
    :cond_1
    sget-boolean p1, Landroidx/loader/app/LoaderManagerImpl;->c:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "  Re-using existing loader "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    new-instance p1, Landroidx/loader/app/LoaderManagerImpl$a;

    iget-object p2, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/content/Loader;

    invoke-direct {p1, p2, p3}, Landroidx/loader/app/LoaderManagerImpl$a;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 100
    iget-object p3, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p3, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    iget-object v1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p:Landroidx/loader/app/LoaderManagerImpl$a;

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 105
    :cond_3
    iput-object p3, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 106
    iput-object p1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->p:Landroidx/loader/app/LoaderManagerImpl$a;

    return-object p2

    .line 412
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markForRedelivery()V
    .locals 4

    .line 335
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    .line 335
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 337
    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 338
    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$b;

    iget-boolean v1, v0, Landroidx/loader/app/LoaderManagerImpl$b;->e:Z

    if-nez v1, :cond_3

    .line 436
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 440
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$b;->d:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 444
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->d(Z)Landroidx/loader/content/Loader;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 447
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/loader/app/LoaderManagerImpl;->a(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object p1

    return-object p1

    .line 437
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 487
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 491
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
