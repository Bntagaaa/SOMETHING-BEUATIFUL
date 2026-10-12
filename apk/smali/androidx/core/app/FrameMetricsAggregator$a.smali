.class Landroidx/core/app/FrameMetricsAggregator$a;
.super Landroidx/core/app/FrameMetricsAggregator$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static e:Landroid/os/HandlerThread;

.field public static f:Landroid/os/Handler;


# instance fields
.field public final a:I

.field public b:[Landroid/util/SparseIntArray;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/view/Window$OnFrameMetricsAvailableListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 344
    invoke-direct {p0}, Landroidx/core/app/FrameMetricsAggregator$b;-><init>()V

    const/16 v0, 0x9

    .line 339
    new-array v0, v0, [Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->c:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator$a$a;

    invoke-direct {v0, p0}, Landroidx/core/app/FrameMetricsAggregator$a$a;-><init>(Landroidx/core/app/FrameMetricsAggregator$a;)V

    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 345
    iput p1, p0, Landroidx/core/app/FrameMetricsAggregator$a;->a:I

    return-void
.end method

.method public static a(Landroid/util/SparseIntArray;J)V
    .locals 4

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x7a120

    add-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    .line 400
    div-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 404
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 4

    .line 411
    sget-object v0, Landroidx/core/app/FrameMetricsAggregator$a;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameMetricsAggregator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$a;->e:Landroid/os/HandlerThread;

    .line 413
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 414
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroidx/core/app/FrameMetricsAggregator$a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/FrameMetricsAggregator$a;->f:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 417
    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    iget v2, p0, Landroidx/core/app/FrameMetricsAggregator$a;->a:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 418
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    sget-object v2, Landroidx/core/app/FrameMetricsAggregator$a;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 1

    .line 453
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 4

    .line 427
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 428
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 429
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-virtual {p1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 434
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    return-object p1
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    .line 459
    new-array v1, v1, [Landroid/util/SparseIntArray;

    iput-object v1, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 4

    .line 439
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 442
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 443
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroidx/core/app/FrameMetricsAggregator$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-virtual {v2, v3}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$a;->b:[Landroid/util/SparseIntArray;

    return-object v0
.end method
