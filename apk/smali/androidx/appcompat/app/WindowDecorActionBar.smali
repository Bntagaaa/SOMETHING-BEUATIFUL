.class public Landroidx/appcompat/app/WindowDecorActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;,
        Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field public static final F:Landroid/view/animation/AccelerateInterpolator;

.field public static final G:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Landroidx/core/view/ViewPropertyAnimatorListener;

.field public final D:Landroidx/core/view/ViewPropertyAnimatorListener;

.field public final E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public final c:Landroid/app/Activity;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Landroidx/appcompat/widget/DecorToolbar;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public final h:Landroid/view/View;

.field public i:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field public final j:Ljava/util/ArrayList;

.field public k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

.field public l:I

.field public m:Z

.field public n:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

.field public o:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

.field public p:Landroidx/appcompat/view/ActionMode$Callback;

.field public q:Z

.field public final r:Ljava/util/ArrayList;

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->F:Landroid/view/animation/AccelerateInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->G:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    .line 128
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    .line 134
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$a;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->C:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 151
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$b;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->D:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 159
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$c;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 169
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->c:Landroid/app/Activity;

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->d(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    .line 128
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    .line 134
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$a;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->C:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 151
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$b;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->D:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 159
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$c;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 179
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->d(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    .line 128
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    .line 134
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$a;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->C:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 151
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$b;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->D:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 159
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$c;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 188
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 1

    .line 563
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 1

    .line 578
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->c()V

    .line 579
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    .line 580
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/WindowDecorActionBar;->b(Landroidx/appcompat/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 1

    .line 568
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->c()V

    .line 569
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    .line 570
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->b(Landroidx/appcompat/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 682
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->x:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 683
    iput-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->x:Z

    .line 684
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 687
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    goto :goto_0

    .line 708
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->x:Z

    if-eqz v1, :cond_3

    .line 709
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->x:Z

    .line 710
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 711
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 713
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    .line 912
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_5

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    .line 884
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 886
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    goto :goto_1

    .line 889
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 891
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 894
    :goto_1
    new-instance v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 895
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 896
    invoke-virtual {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 899
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 900
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    .line 902
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 903
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 2

    .line 540
    check-cast p1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    .line 541
    invoke-virtual {p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 548
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 550
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 552
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 544
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 4

    .line 285
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 291
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 296
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 298
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 305
    :goto_1
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .line 971
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 5

    .line 192
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 196
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    instance-of v1, v0, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v1, :cond_1

    .line 235
    check-cast v0, Landroidx/appcompat/widget/DecorToolbar;

    goto :goto_0

    .line 236
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_9

    .line 237
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    .line 196
    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    .line 197
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 199
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 202
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 207
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    .line 210
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 213
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->m:Z

    .line 216
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 218
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->e(Z)V

    .line 220
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 223
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 226
    :cond_6
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v0, v0

    .line 228
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setElevation(F)V

    .line 230
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 203
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_a

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    const-string v0, "null"

    :goto_4
    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 4

    .line 348
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->q:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->q:Z

    .line 353
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 355
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v3, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public doHide(Z)V
    .locals 5

    .line 833
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 837
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->C:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 838
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 839
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 840
    new-instance v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 841
    iget-object v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 843
    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 844
    iget-object v4, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 845
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 847
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 848
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 849
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 850
    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 851
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 853
    :cond_3
    sget-object p1, Landroidx/appcompat/app/WindowDecorActionBar;->F:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v2, 0xfa

    .line 854
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 855
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 856
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 857
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 859
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public doShow(Z)V
    .locals 6

    .line 784
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 787
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 789
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->D:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->h:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 791
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 792
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    .line 794
    filled-new-array {v1, v1}, [I

    move-result-object p1

    .line 795
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    .line 796
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 798
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 799
    new-instance p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 800
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 801
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar;->E:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 802
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 803
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 804
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 805
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 807
    :cond_3
    sget-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->G:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v0, 0xfa

    .line 808
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 816
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 817
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 818
    invoke-virtual {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0

    .line 820
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 821
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 822
    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    .line 823
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    const/4 p1, 0x0

    .line 825
    invoke-interface {v2, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 827
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 828
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 260
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 263
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 264
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 267
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 270
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 274
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 277
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    iget-boolean v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 281
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public enableContentAnimations(Z)V
    .locals 0

    .line 670
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 767
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->v:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->w:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->x:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 771
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    .line 773
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->doShow(Z)V

    return-void

    .line 776
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    .line 778
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->doHide(Z)V

    :cond_3
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 495
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 515
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .line 742
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .line 1308
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1310
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1312
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 3

    .line 1296
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 1298
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    return v0

    :cond_1
    return v2

    .line 1300
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 505
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1355
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 1320
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .line 917
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 919
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 920
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 921
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 924
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->b:Landroid/content/Context;

    goto :goto_0

    .line 926
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->b:Landroid/content/Context;

    .line 929
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 500
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 1370
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 1384
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 701
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->v:Z

    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 1

    .line 719
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->w:Z

    .line 721
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .line 737
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 865
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 867
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->y:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 934
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 588
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 256
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->e(Z)V

    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .line 959
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1396
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->n:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1399
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 1402
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 1401
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1403
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1404
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 318
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->t:I

    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 426
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 429
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_1
    const/4 v0, -0x1

    .line 433
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 0

    .line 593
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 598
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 603
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    .line 605
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 606
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    .line 608
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 611
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 613
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_5

    .line 617
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .line 448
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 3

    .line 623
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_0
    iput v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->c:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 631
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 637
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-ne v1, p1, :cond_3

    if-eqz v1, :cond_6

    .line 639
    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 640
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_1

    .line 643
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_4
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 644
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_5

    .line 645
    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 647
    :cond_5
    check-cast p1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz p1, :cond_6

    .line 649
    invoke-virtual {p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->k:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p1, v1, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 653
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 654
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .line 361
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    .line 362
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1280
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 1285
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    iget-object p2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .line 1389
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->m:Z

    if-nez v0, :cond_0

    .line 1390
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 377
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->m:Z

    .line 466
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 471
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 473
    iput-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->m:Z

    .line 475
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 387
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 372
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 382
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHideOffset(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 747
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 751
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 727
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 731
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->B:Z

    .line 732
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 954
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 949
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 944
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 939
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1361
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1366
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 2

    .line 1291
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/z;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/z;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1375
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5

    .line 1325
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    const/4 v2, 0x0

    .line 1329
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 1330
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eq v0, p1, :cond_1

    .line 1333
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    if-nez v0, :cond_1

    .line 1334
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 1335
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1338
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 1341
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->c()V

    .line 1342
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->i:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    iget v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1344
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1345
    iput v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->l:I

    .line 1349
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1350
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->s:Z

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .line 407
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void

    .line 415
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->A:Z

    if-nez p1, :cond_0

    .line 331
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 485
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 397
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 438
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->f:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 675
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->v:Z

    .line 677
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .line 693
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->w:Z

    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->f(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 2

    .line 520
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->n:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 524
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 525
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 526
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V

    .line 527
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->n:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 531
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 532
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    const/4 p1, 0x1

    .line 533
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
