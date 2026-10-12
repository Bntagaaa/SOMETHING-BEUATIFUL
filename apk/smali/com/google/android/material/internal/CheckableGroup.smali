.class public Lcom/google/android/material/internal/CheckableGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashSet;

.field public c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/internal/MaterialCheckable;)Z
    .locals 5

    .line 149
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/MaterialCheckable;

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/internal/CheckableGroup;->b(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 157
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 159
    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    return v0
.end method

.method public addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->a(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 79
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/CheckableGroup$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/CheckableGroup$a;-><init>(Lcom/google/android/material/internal/CheckableGroup;)V

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    return-void
.end method

.method public final b(Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .locals 4

    .line 166
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    return v3

    .line 175
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 176
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {p1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    return p2
.end method

.method public check(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 96
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->a(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearCheck()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/MaterialCheckable;

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/internal/CheckableGroup;->b(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public getCheckedIds()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    instance-of v4, v3, Lcom/google/android/material/internal/MaterialCheckable;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSingleCheckedId()I
    .locals 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isSelectionRequired()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->e:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->d:Z

    return v0
.end method

.method public removeCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnCheckedStateChangeListener(Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->e:Z

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->d:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->d:Z

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->clearCheck()V

    :cond_0
    return-void
.end method

.method public uncheck(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 106
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->e:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/CheckableGroup;->b(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method
