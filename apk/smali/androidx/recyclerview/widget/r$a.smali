.class Landroidx/recyclerview/widget/r$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/r;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/r;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 52
    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/r$b;->onChanged(Landroidx/recyclerview/widget/r;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Landroidx/recyclerview/widget/r$b;->onItemRangeChanged(Landroidx/recyclerview/widget/r;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v1, v0, p1, p2, p3}, Landroidx/recyclerview/widget/r$b;->onItemRangeChanged(Landroidx/recyclerview/widget/r;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget v1, v0, Landroidx/recyclerview/widget/r;->e:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 79
    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/r$b;->onItemRangeInserted(Landroidx/recyclerview/widget/r;II)V

    .line 83
    iget p1, v0, Landroidx/recyclerview/widget/r;->e:I

    if-lez p1, :cond_0

    iget-object p1, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    .line 85
    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/r$b;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/r;)V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    const-string p3, "moving more than 1 item is not supported in RecyclerView"

    invoke-static {v0, p3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    iget-object p3, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v0, p3, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v0, p3, p1, p2}, Landroidx/recyclerview/widget/r$b;->onItemRangeMoved(Landroidx/recyclerview/widget/r;II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 91
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget v1, v0, Landroidx/recyclerview/widget/r;->e:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 92
    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/r$b;->onItemRangeRemoved(Landroidx/recyclerview/widget/r;II)V

    .line 97
    iget p1, v0, Landroidx/recyclerview/widget/r;->e:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    iget-object p1, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    .line 99
    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/r$b;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/r;)V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/recyclerview/widget/r$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/r$b;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/r;)V

    return-void
.end method
