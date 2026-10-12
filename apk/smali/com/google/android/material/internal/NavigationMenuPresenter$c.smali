.class Lcom/google/android/material/internal/NavigationMenuPresenter$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/internal/NavigationMenuPresenter$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public c:Z

.field public final synthetic d:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->d:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 515
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    .line 654
    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 657
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    .line 658
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 659
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$d;

    invoke-direct {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->d:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_f

    .line 665
    iget-object v10, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 666
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 667
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 669
    :cond_1
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 670
    invoke-virtual {v10, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 672
    :cond_2
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 673
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v11

    .line 674
    invoke-interface {v11}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v7, :cond_3

    .line 676
    new-instance v12, Lcom/google/android/material/internal/NavigationMenuPresenter$f;

    iget v13, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->A:I

    invoke-direct {v12, v13, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$f;-><init>(II)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_3
    new-instance v12, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-direct {v12, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 681
    invoke-interface {v11}, Landroid/view/Menu;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v13, :cond_8

    .line 682
    invoke-interface {v11, v14}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 683
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_7

    if-nez v15, :cond_4

    .line 684
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    .line 687
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 688
    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 690
    :cond_5
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 691
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 693
    :cond_6
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-direct {v5, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    if-eqz v15, :cond_9

    .line 697
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v12, v1, :cond_9

    .line 724
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    const/4 v10, 0x1

    .line 725
    iput-boolean v10, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->b:Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, 0x1

    goto :goto_6

    .line 701
    :cond_a
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-eq v1, v6, :cond_d

    .line 703
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 704
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_c

    add-int/lit8 v9, v9, 0x1

    .line 707
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$f;

    iget v6, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->A:I

    invoke-direct {v5, v6, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$f;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    if-nez v8, :cond_c

    .line 709
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 711
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v9

    :goto_4
    if-ge v6, v5, :cond_e

    .line 724
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    const/4 v11, 0x1

    .line 725
    iput-boolean v11, v8, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->b:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v11, 0x1

    const/4 v8, 0x1

    .line 713
    :goto_5
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-direct {v5, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 714
    iput-boolean v8, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->b:Z

    .line 715
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    .line 719
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    return-void
.end method

.method public createInstanceState()Landroid/os/Bundle;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 747
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 748
    const-string v2, "android:menu:checked"

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 751
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 752
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 753
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$e;

    .line 754
    instance-of v6, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    if-eqz v6, :cond_2

    .line 755
    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 756
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 758
    new-instance v7, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v7}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 759
    invoke-virtual {v6, v7}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 760
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 764
    :cond_3
    const-string v2, "android:menu:action_views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$e;

    .line 536
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$f;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 538
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$d;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 540
    :cond_1
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    if-eqz v0, :cond_3

    .line 541
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    .line 542
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 548
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 505
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$l;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$l;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$l;I)V
    .locals 5
    .param p1    # Lcom/google/android/material/internal/NavigationMenuPresenter$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->d:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$f;

    .line 623
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->s:I

    .line 625
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->getPaddingTop()I

    move-result v1

    iget v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->t:I

    .line 627
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->getPaddingBottom()I

    move-result p2

    .line 623
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 603
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 604
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    .line 605
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget p2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->h:I

    if-eqz p2, :cond_2

    .line 607
    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 609
    :cond_2
    iget p2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->u:I

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->v:I

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 609
    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 615
    iget-object p2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->i:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_3

    .line 616
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    return-void

    .line 572
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 573
    iget-object v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->l:Landroid/content/res/ColorStateList;

    .line 263
    iput-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 264
    :goto_1
    iput-boolean v3, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Z

    .line 265
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_6
    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->j:I

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 577
    :cond_7
    iget-object v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    .line 578
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 582
    :cond_8
    iget-object v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 580
    :goto_2
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_a

    .line 584
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 586
    :cond_a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    .line 587
    iget-boolean v0, p2, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 588
    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->o:I

    iget v1, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->p:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 593
    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->q:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 594
    iget-boolean v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->w:Z

    if-eqz v0, :cond_b

    .line 595
    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->r:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 60
    :cond_b
    iget v0, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->y:I

    .line 597
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 598
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$l;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$l;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->d:Lcom/google/android/material/internal/NavigationMenuPresenter;

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 562
    :cond_0
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$b;

    iget-object p2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$b;-><init>(Landroid/view/View;)V

    return-object p1

    .line 560
    :cond_1
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$j;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 558
    :cond_2
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$k;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$k;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 556
    :cond_3
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$i;

    iget-object v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->C:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 505
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$l;)V

    return-void
.end method

.method public onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$l;)V
    .locals 1

    .line 639
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$i;

    if-eqz v0, :cond_0

    .line 640
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 769
    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 770
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 771
    iput-boolean v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    .line 772
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 773
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$e;

    .line 774
    instance-of v6, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    if-eqz v6, :cond_0

    .line 775
    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-virtual {v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 776
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 777
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 782
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    .line 783
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a()V

    .line 786
    :cond_2
    const-string v0, "android:menu:action_views"

    .line 787
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 789
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 790
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuPresenter$e;

    .line 791
    instance-of v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    if-nez v4, :cond_3

    goto :goto_3

    .line 794
    :cond_3
    check-cast v3, Lcom/google/android/material/internal/NavigationMenuPresenter$g;

    invoke-virtual {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 798
    :cond_4
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 802
    :cond_5
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v3, :cond_6

    goto :goto_3

    .line 806
    :cond_6
    invoke-virtual {v4, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 2
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 734
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 736
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    .line 737
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 812
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->c:Z

    return-void
.end method

.method public update()V
    .locals 0

    .line 645
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$c;->a()V

    .line 646
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
