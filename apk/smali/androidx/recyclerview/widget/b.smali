.class Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/b$b;,
        Landroidx/recyclerview/widget/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$e;

.field public final b:Landroidx/recyclerview/widget/b$a;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 73
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 74
    new-instance p1, Landroidx/recyclerview/widget/b$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/b$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 278
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    if-gez p2, :cond_0

    .line 279
    invoke-interface {v0}, Landroidx/recyclerview/widget/b$b;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->d(I)I

    move-result p2

    .line 283
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v1, p2, p4}, Landroidx/recyclerview/widget/b$a;->e(IZ)V

    if-eqz p4, :cond_1

    .line 84
    iget-object p4, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->onEnteredHiddenState(Landroid/view/View;)V

    .line 287
    :cond_1
    invoke-interface {v0, p1, p2, p3}, Landroidx/recyclerview/widget/b$b;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .line 228
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->d(I)I

    move-result p1

    .line 229
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-interface {v0}, Landroidx/recyclerview/widget/b$b;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)I
    .locals 4

    if-gez p1, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-interface {v0}, Landroidx/recyclerview/widget/b$b;->getChildCount()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 144
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->b(I)I

    move-result v3

    sub-int v3, v1, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 147
    :goto_1
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public final e(Landroid/view/View;)I
    .locals 3

    .line 345
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b$a;->b(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final f(I)V
    .locals 5

    .line 196
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    iget v1, p0, Landroidx/recyclerview/widget/b;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->d(I)I

    move-result p1

    .line 203
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->getChildAt(I)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 217
    :goto_0
    iput v3, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 218
    iput-object v1, p0, Landroidx/recyclerview/widget/b;->e:Landroid/view/View;

    return-void

    .line 207
    :cond_0
    :try_start_1
    iput v2, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 208
    iput-object v4, p0, Landroidx/recyclerview/widget/b;->e:Landroid/view/View;

    .line 209
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/b$a;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/b;->g(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 212
    :cond_1
    :goto_1
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :goto_2
    iput v3, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 218
    iput-object v1, p0, Landroidx/recyclerview/widget/b;->e:Landroid/view/View;

    .line 219
    throw p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->onLeftHiddenState(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
