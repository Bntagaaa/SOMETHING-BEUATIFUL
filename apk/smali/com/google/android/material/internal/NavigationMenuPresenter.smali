.class public Lcom/google/android/material/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/NavigationMenuPresenter$h;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$d;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$f;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$g;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$e;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$c;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$b;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$j;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$k;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$i;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$l;
    }
.end annotation


# static fields
.field public static final NO_TEXT_APPEARANCE_SET:I


# instance fields
.field public A:I

.field public B:I

.field public final C:Landroid/view/View$OnClickListener;

.field public a:Lcom/google/android/material/internal/NavigationMenuView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public d:Landroidx/appcompat/view/menu/MenuBuilder;

.field public e:I

.field public f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

.field public g:Landroid/view/LayoutInflater;

.field public h:I

.field public i:Landroid/content/res/ColorStateList;

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/graphics/drawable/RippleDrawable;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->h:I

    .line 80
    iput v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->j:I

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->B:I

    .line 484
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$a;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->C:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 425
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 426
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->z:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 427
    iput v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->z:I

    .line 417
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    if-eqz v0, :cond_0

    .line 418
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->z:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 434
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 341
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->t:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 331
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->s:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->e:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->o:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->q:I

    return v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->y:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 321
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->p:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 121
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$h;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$h;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 123
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    if-nez p1, :cond_0

    .line 124
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    .line 126
    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->B:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 131
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    .line 132
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public getSubheaderInsetEnd()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 361
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->v:I

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 351
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->u:I

    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 234
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    .line 110
    iput-object p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 112
    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->A:I

    return-void
.end method

.method public isBehindStatusBar()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->c:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 207
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 208
    check-cast p1, Landroid/os/Bundle;

    .line 209
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 213
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 192
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    if-eqz v1, :cond_1

    .line 195
    const-string v2, "android:menu:adapter"

    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->createInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 198
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 200
    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->z:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setBehindStatusBar(Z)V
    .locals 3

    .line 403
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    if-eq v0, p1, :cond_1

    .line 404
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    .line 417
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->x:Z

    if-eqz p1, :cond_0

    .line 418
    iget p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->z:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v0, p1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->c:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setDividerInsetEnd(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 345
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->t:I

    const/4 p1, 0x0

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 335
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->s:I

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->e:I

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 301
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/RippleDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->n:Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->o:I

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->q:I

    const/4 p1, 0x0

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 388
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->r:I

    if-eq v0, p1, :cond_0

    .line 389
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->r:I

    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->w:Z

    const/4 p1, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 276
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->l:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->y:I

    const/4 p1, 0x0

    .line 380
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 291
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->j:I

    const/4 p1, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 286
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 325
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->p:I

    const/4 p1, 0x0

    .line 326
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 438
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->B:I

    .line 439
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 261
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 365
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->v:I

    const/4 p1, 0x0

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 355
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->u:I

    const/4 p1, 0x0

    .line 356
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setSubheaderTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 266
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->h:I

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setUpdateSuspended(Z)V

    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->f:Lcom/google/android/material/internal/NavigationMenuPresenter$c;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->update()V

    :cond_0
    return-void
.end method
