.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:I

.field public final c:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

.field public final d:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

.field public final e:Landroidx/recyclerview/widget/TileList;

.field public final f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

.field public final g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

.field public final h:[I

.field public final i:[I

.field public final j:[I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Landroid/util/SparseIntArray;

.field public final q:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

.field public final r:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 64
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->h:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->i:[I

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->j:[I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    .line 71
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    .line 73
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->n:I

    .line 74
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->p:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$a;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->q:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 293
    new-instance v1, Landroidx/recyclerview/widget/AsyncListUtil$b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AsyncListUtil$b;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->r:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 92
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->a:Ljava/lang/Class;

    .line 93
    iput p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->b:I

    .line 94
    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->c:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    .line 95
    iput-object p4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->d:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 97
    new-instance p1, Landroidx/recyclerview/widget/TileList;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->e:Landroidx/recyclerview/widget/TileList;

    .line 99
    new-instance p1, Landroidx/recyclerview/widget/q;

    invoke-direct {p1}, Landroidx/recyclerview/widget/q;-><init>()V

    .line 100
    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->f:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 101
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->refresh()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->h:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->d:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    const/4 v2, 0x0

    .line 180
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    if-gt v3, v5, :cond_7

    if-gez v3, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    iget v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    if-lt v5, v6, :cond_1

    goto :goto_2

    .line 188
    :cond_1
    iget-boolean v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->k:Z

    iget-object v7, p0, Landroidx/recyclerview/widget/AsyncListUtil;->i:[I

    if-nez v6, :cond_2

    .line 189
    iput v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    goto :goto_1

    .line 190
    :cond_2
    aget v6, v7, v4

    if-gt v3, v6, :cond_5

    aget v6, v7, v2

    if-le v6, v5, :cond_3

    goto :goto_0

    :cond_3
    if-ge v3, v6, :cond_4

    .line 194
    iput v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    goto :goto_1

    :cond_4
    if-le v3, v6, :cond_6

    const/4 v6, 0x2

    .line 196
    iput v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    goto :goto_1

    .line 192
    :cond_5
    :goto_0
    iput v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    .line 199
    :cond_6
    :goto_1
    aput v3, v7, v2

    .line 200
    aput v5, v7, v4

    .line 202
    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->j:[I

    invoke-virtual {v1, v0, v5, v3}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 203
    aget v1, v0, v2

    aget v3, v5, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v5, v2

    .line 204
    aget v1, v0, v4

    aget v3, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    sub-int/2addr v6, v4

    .line 205
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v5, v4

    .line 207
    aget v7, v0, v2

    aget v8, v0, v4

    aget v9, v5, v2

    iget v11, p0, Landroidx/recyclerview/widget/AsyncListUtil;->l:I

    iget-object v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface/range {v6 .. v11}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    :cond_7
    :goto_2
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 155
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    if-ge p1, v0, :cond_2

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->e:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    iget v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->n:I

    if-eq v1, v2, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->p:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-object v0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within 0 and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    .line 175
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->m:I

    return v0
.end method

.method public onRangeChanged()V
    .locals 2

    .line 107
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->n:I

    if-eq v0, v1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->a()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->k:Z

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->o:I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->g:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    return-void
.end method
