.class Landroidx/viewpager2/adapter/FragmentStateAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public c:Landroidx/lifecycle/LifecycleEventObserver;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 2

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->f:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    const-wide/16 v0, -0x1

    .line 640
    iput-wide v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->e:J

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 758
    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 759
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected ViewPager2 instance. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 12

    .line 486
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->f:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 486
    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 693
    :cond_0
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 697
    :cond_1
    iget-object v2, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 701
    :cond_2
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    .line 702
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    goto/16 :goto_5

    .line 708
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v3

    .line 709
    iget-wide v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->e:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    if-nez p1, :cond_4

    goto/16 :goto_5

    .line 713
    :cond_4
    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    .line 714
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 718
    :cond_5
    iput-wide v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->e:J

    .line 719
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 723
    :goto_0
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 724
    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 725
    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 727
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    .line 731
    :cond_6
    iget-wide v9, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->e:J

    cmp-long v11, v6, v9

    if-eqz v11, :cond_7

    .line 732
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 733
    iget-object v10, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->g:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;

    invoke-virtual {v10, v8, v9}, Landroidx/viewpager2/adapter/FragmentStateAdapter$b;->dispatchMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v4, v8

    .line 739
    :goto_1
    iget-wide v9, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->e:J

    cmp-long v11, v6, v9

    if-nez v11, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    if-eqz v4, :cond_a

    .line 742
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 743
    iget-object v3, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->g:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;

    invoke-virtual {v3, v4, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter$b;->dispatchMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 748
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 749
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 750
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 751
    iget-object v2, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->g:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$b;->dispatchPostEvents(Ljava/util/List;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method
