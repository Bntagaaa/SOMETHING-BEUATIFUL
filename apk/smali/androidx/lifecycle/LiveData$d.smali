.class abstract Landroidx/lifecycle/LiveData$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/Observer;

.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LiveData$d;->d:Landroidx/lifecycle/LiveData;

    const/4 p1, -0x1

    .line 459
    iput p1, p0, Landroidx/lifecycle/LiveData$d;->c:I

    .line 462
    iput-object p2, p0, Landroidx/lifecycle/LiveData$d;->a:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 475
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$d;->b:Z

    if-ne p1, v0, :cond_0

    goto :goto_6

    .line 480
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$d;->b:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 393
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData$d;->d:Landroidx/lifecycle/LiveData;

    iget v2, v1, Landroidx/lifecycle/LiveData;->c:I

    add-int/2addr p1, v2

    .line 394
    iput p1, v1, Landroidx/lifecycle/LiveData;->c:I

    .line 395
    iget-boolean p1, v1, Landroidx/lifecycle/LiveData;->d:Z

    if-eqz p1, :cond_2

    goto :goto_5

    .line 398
    :cond_2
    iput-boolean v0, v1, Landroidx/lifecycle/LiveData;->d:Z

    :goto_1
    const/4 p1, 0x0

    .line 400
    :try_start_0
    iget v3, v1, Landroidx/lifecycle/LiveData;->c:I

    if-eq v2, v3, :cond_7

    if-nez v2, :cond_3

    if-lez v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-lez v2, :cond_4

    if-nez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 405
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->onActive()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_5
    if-eqz v2, :cond_6

    .line 407
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_4
    move v2, v3

    goto :goto_1

    .line 411
    :cond_7
    iput-boolean p1, v1, Landroidx/lifecycle/LiveData;->d:Z

    .line 482
    :goto_5
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$d;->b:Z

    if-eqz p1, :cond_8

    .line 483
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$d;)V

    :cond_8
    :goto_6
    return-void

    .line 411
    :goto_7
    iput-boolean p1, v1, Landroidx/lifecycle/LiveData;->d:Z

    .line 412
    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract d()Z
.end method
