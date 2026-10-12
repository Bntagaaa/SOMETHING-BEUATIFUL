.class Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/r$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/ConcatAdapter;

.field public final b:Landroidx/recyclerview/widget/ViewTypeStorage;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/ArrayList;

.field public f:Landroidx/recyclerview/widget/c$a;

.field public final g:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public final h:Landroidx/recyclerview/widget/StableIdStorage;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ConcatAdapter;Landroidx/recyclerview/widget/ConcatAdapter$Config;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->c:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroidx/recyclerview/widget/c$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/c$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    .line 86
    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 89
    iget-boolean p1, p2, Landroidx/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/ViewTypeStorage;

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/ViewTypeStorage;

    .line 96
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->g:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 97
    sget-object p2, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_1

    .line 98
    new-instance p1, Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;

    invoke-direct {p1}, Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->h:Landroidx/recyclerview/widget/StableIdStorage;

    return-void

    .line 99
    :cond_1
    sget-object p2, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_2

    .line 100
    new-instance p1, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p1}, Landroidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->h:Landroidx/recyclerview/widget/StableIdStorage;

    return-void

    .line 101
    :cond_2
    sget-object p2, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_3

    .line 102
    new-instance p1, Landroidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p1}, Landroidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->h:Landroidx/recyclerview/widget/StableIdStorage;

    return-void

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown stable id mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 4

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    if-ltz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_7

    .line 147
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    const-string v2, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "ConcatAdapter"

    const-string v2, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/c;->f(Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    :goto_1
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 161
    :cond_3
    new-instance v1, Landroidx/recyclerview/widget/r;

    iget-object v2, p0, Landroidx/recyclerview/widget/c;->h:Landroidx/recyclerview/widget/StableIdStorage;

    .line 162
    invoke-interface {v2}, Landroidx/recyclerview/widget/StableIdStorage;->createStableIdLookup()Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/ViewTypeStorage;

    invoke-direct {v1, p2, p0, v3, v2}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/ViewTypeStorage;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V

    .line 163
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 165
    iget-object p1, p0, Landroidx/recyclerview/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    .line 142
    :cond_5
    iget p1, v1, Landroidx/recyclerview/widget/r;->e:I

    if-lez p1, :cond_6

    .line 174
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result p1

    .line 142
    iget p2, v1, Landroidx/recyclerview/widget/r;->e:I

    .line 173
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 179
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()V

    const/4 p1, 0x1

    return p1

    .line 144
    :cond_7
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index must be between 0 and "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Given:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()V
    .locals 5

    .line 294
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    .line 295
    iget-object v2, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 296
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v2

    .line 297
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v4, :cond_0

    .line 142
    iget v1, v1, Landroidx/recyclerview/widget/r;->e:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 305
    :cond_2
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 288
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v1

    if-eq v3, v1, :cond_3

    .line 289
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/ConcatAdapter;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    :cond_3
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/r;)I
    .locals 3

    .line 206
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r;

    if-eq v2, p1, :cond_0

    .line 142
    iget v2, v2, Landroidx/recyclerview/widget/r;->e:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final d(I)Landroidx/recyclerview/widget/c$a;
    .locals 5

    .line 347
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/c$a;->c:Z

    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Landroidx/recyclerview/widget/c$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/c$a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 350
    iput-boolean v1, v0, Landroidx/recyclerview/widget/c$a;->c:Z

    .line 354
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/r;

    .line 142
    iget v4, v3, Landroidx/recyclerview/widget/r;->e:I

    if-le v4, v2, :cond_1

    .line 356
    iput-object v3, v0, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    .line 357
    iput v2, v0, Landroidx/recyclerview/widget/c$a;->b:I

    goto :goto_2

    :cond_1
    sub-int/2addr v2, v4

    goto :goto_1

    .line 362
    :cond_2
    :goto_2
    iget-object v1, v0, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    if-eqz v1, :cond_3

    return-object v0

    .line 363
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find wrapper for "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/r;
    .locals 3

    .line 424
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/r;

    if-eqz v0, :cond_0

    return-object v0

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$Adapter;)I
    .locals 4

    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/r;

    iget-object v3, v3, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getCopyOfAdapters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 508
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r;

    .line 510
    iget-object v2, v2, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 3

    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->d(I)Landroidx/recyclerview/widget/c$a;

    move-result-object p1

    .line 218
    iget-object v0, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    iget v1, p1, Landroidx/recyclerview/widget/c$a;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/r;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 369
    iput-boolean v2, p1, Landroidx/recyclerview/widget/c$a;->c:Z

    const/4 v2, 0x0

    .line 370
    iput-object v2, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    const/4 v2, -0x1

    .line 371
    iput v2, p1, Landroidx/recyclerview/widget/c$a;->b:I

    .line 372
    iput-object p1, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 318
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->d(I)Landroidx/recyclerview/widget/c$a;

    move-result-object p1

    .line 319
    iget-object v0, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    iget v1, p1, Landroidx/recyclerview/widget/c$a;->b:I

    .line 146
    iget-object v2, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 146
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->localToGlobal(I)I

    move-result v0

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p1, Landroidx/recyclerview/widget/c$a;->c:Z

    const/4 v1, 0x0

    .line 370
    iput-object v1, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    const/4 v1, -0x1

    .line 371
    iput v1, p1, Landroidx/recyclerview/widget/c$a;->b:I

    .line 372
    iput-object p1, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    return v0
.end method

.method public getLocalAdapterPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/r;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 475
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result v1

    sub-int/2addr p3, v1

    .line 479
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ltz p3, :cond_1

    if-ge p3, v1, :cond_1

    .line 490
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p1

    return p1

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    const-string v3, " which is out of bounds for the adapter with size "

    const-string v4, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    .line 0
    invoke-static {p3, v1, v2, v3, v4}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 481
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "adapter:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTotalCount()I
    .locals 3

    .line 311
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r;

    .line 142
    iget v2, v2, Landroidx/recyclerview/widget/r;->e:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getWrappedAdapterAndPosition(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->d(I)Landroidx/recyclerview/widget/c$a;

    move-result-object p1

    .line 332
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    iget-object v1, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v2, p1, Landroidx/recyclerview/widget/c$a;->b:I

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p1, Landroidx/recyclerview/widget/c$a;->c:Z

    const/4 v1, 0x0

    .line 370
    iput-object v1, p1, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    const/4 v1, -0x1

    .line 371
    iput v1, p1, Landroidx/recyclerview/widget/c$a;->b:I

    .line 372
    iput-object p1, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 2

    .line 516
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->g:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 433
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 434
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 445
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    .line 447
    iget-object v1, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 376
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/c;->d(I)Landroidx/recyclerview/widget/c$a;

    move-result-object p2

    .line 377
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    iget-object v1, p2, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p2, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    iget v1, p2, Landroidx/recyclerview/widget/c$a;->b:I

    .line 157
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 157
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x0

    .line 369
    iput-boolean p1, p2, Landroidx/recyclerview/widget/c$a;->c:Z

    const/4 p1, 0x0

    .line 370
    iput-object p1, p2, Landroidx/recyclerview/widget/c$a;->a:Landroidx/recyclerview/widget/r;

    const/4 p1, -0x1

    .line 371
    iput p1, p2, Landroidx/recyclerview/widget/c$a;->b:I

    .line 372
    iput-object p2, p0, Landroidx/recyclerview/widget/c;->f:Landroidx/recyclerview/widget/c$a;

    return-void
.end method

.method public onChanged(Landroidx/recyclerview/widget/r;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    iget-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 227
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 325
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/ViewTypeStorage;

    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/ViewTypeStorage;->getWrapperForGlobalType(I)Landroidx/recyclerview/widget/r;

    move-result-object v0

    .line 152
    iget-object v1, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 152
    invoke-interface {v1, p2}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->globalToLocal(I)I

    move-result p2

    .line 153
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 452
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 454
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 455
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 461
    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    .line 462
    iget-object v1, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 412
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    .line 418
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemRangeChanged(Landroidx/recyclerview/widget/r;IILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 243
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result p1

    .line 244
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(Landroidx/recyclerview/widget/r;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 254
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result p1

    .line 255
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(Landroidx/recyclerview/widget/r;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 274
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result p1

    add-int/2addr p2, p1

    add-int/2addr p3, p1

    .line 275
    iget-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(Landroidx/recyclerview/widget/r;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->c(Landroidx/recyclerview/widget/r;)I

    move-result p1

    .line 265
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/r;)V
    .locals 0

    .line 283
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->b()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 392
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    .line 393
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 397
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    .line 398
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 402
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, v1, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 408
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
