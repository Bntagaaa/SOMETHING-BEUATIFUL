.class Landroidx/lifecycle/MediatorLiveData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/MediatorLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/LiveData;

.field public final b:Landroidx/lifecycle/Observer;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Landroidx/lifecycle/MediatorLiveData$a;->c:I

    .line 155
    iput-object p1, p0, Landroidx/lifecycle/MediatorLiveData$a;->a:Landroidx/lifecycle/LiveData;

    .line 156
    iput-object p2, p0, Landroidx/lifecycle/MediatorLiveData$a;->b:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 169
    iget v0, p0, Landroidx/lifecycle/MediatorLiveData$a;->c:I

    .line 345
    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData$a;->a:Landroidx/lifecycle/LiveData;

    iget v1, v1, Landroidx/lifecycle/LiveData;->g:I

    if-eq v0, v1, :cond_0

    .line 170
    iput v1, p0, Landroidx/lifecycle/MediatorLiveData$a;->c:I

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$a;->b:Landroidx/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
