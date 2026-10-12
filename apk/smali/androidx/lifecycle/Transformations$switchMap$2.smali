.class public final Landroidx/lifecycle/Transformations$switchMap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R*\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/lifecycle/Transformations$switchMap$2",
        "Landroidx/lifecycle/Observer;",
        "value",
        "",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "Landroidx/lifecycle/LiveData;",
        "a",
        "Landroidx/lifecycle/LiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "setLiveData",
        "(Landroidx/lifecycle/LiveData;)V",
        "liveData",
        "lifecycle-livedata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Landroidx/arch/core/util/Function;

.field public final synthetic c:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public constructor <init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->b:Landroidx/arch/core/util/Function;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$switchMap$2;->c:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->a:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 160
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->b:Landroidx/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 161
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->a:Landroidx/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->c:Landroidx/lifecycle/MediatorLiveData;

    if-eqz v0, :cond_1

    .line 165
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 167
    :cond_1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->a:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_2

    .line 169
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroidx/lifecycle/Transformations$switchMap$2$a;

    invoke-direct {v0, v1}, Landroidx/lifecycle/Transformations$switchMap$2$a;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance v2, Landroidx/lifecycle/Transformations$d;

    invoke-direct {v2, v0}, Landroidx/lifecycle/Transformations$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LiveData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 157
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->a:Landroidx/lifecycle/LiveData;

    return-void
.end method
