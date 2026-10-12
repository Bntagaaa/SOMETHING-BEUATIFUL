.class public final Lcom/google/android/material/tabs/TabLayoutMediator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayoutMediator$a;,
        Lcom/google/android/material/tabs/TabLayoutMediator$c;,
        Lcom/google/android/material/tabs/TabLayoutMediator$b;,
        Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

.field public f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public g:Z

.field public h:Lcom/google/android/material/tabs/TabLayoutMediator$b;

.field public i:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field public j:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 6
    .param p1    # Lcom/google/android/material/tabs/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 97
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 98
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->c:Z

    .line 99
    iput-boolean p4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->d:Z

    .line 100
    iput-object p5, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->e:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 173
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 177
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->e:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

    invoke-interface {v5, v4, v3}, Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;->onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 178
    invoke-virtual {v0, v4, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 183
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 184
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method public attach()V
    .locals 5

    .line 112
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->g:Z

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->g:Z

    .line 123
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator$b;

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator$b;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->h:Lcom/google/android/material/tabs/TabLayoutMediator$b;

    .line 124
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 127
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator$c;

    iget-boolean v4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->d:Z

    invoke-direct {v2, v0, v4}, Lcom/google/android/material/tabs/TabLayoutMediator$c;-><init>(Landroidx/viewpager2/widget/ViewPager2;Z)V

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->i:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 128
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 132
    iget-boolean v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->c:Z

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/tabs/TabLayoutMediator$a;-><init>(Lcom/google/android/material/tabs/TabLayoutMediator;)V

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->j:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 135
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 141
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator is already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->j:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 152
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->j:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->i:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->h:Lcom/google/android/material/tabs/TabLayoutMediator$b;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 156
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->i:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 157
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->h:Lcom/google/android/material/tabs/TabLayoutMediator$b;

    .line 158
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->g:Z

    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->g:Z

    return v0
.end method
