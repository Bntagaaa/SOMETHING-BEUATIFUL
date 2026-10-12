.class public Landroidx/recyclerview/widget/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field public final a:Landroidx/recyclerview/widget/ListUpdateCallback;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    .line 45
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 4

    .line 58
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 61
    iget-object v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a:Landroidx/recyclerview/widget/ListUpdateCallback;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    invoke-interface {v2, v0, v1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    invoke-interface {v2, v0, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    .line 63
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    invoke-interface {v2, v0, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :goto_0
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 113
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    if-ne v4, p3, :cond_0

    .line 118
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 123
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    .line 124
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    .line 125
    iput-object p3, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    .line 126
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    return-void
.end method

.method public onInserted(II)V
    .locals 4

    .line 78
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    .line 80
    iput v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    .line 81
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 85
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    .line 86
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    .line 87
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 107
    iget-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    .line 92
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    .line 94
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    .line 95
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 99
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c:I

    .line 100
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d:I

    .line 101
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b:I

    return-void
.end method
