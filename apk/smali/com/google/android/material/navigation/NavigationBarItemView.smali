.class public abstract Lcom/google/android/material/navigation/NavigationBarItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarItemView$d;,
        Lcom/google/android/material/navigation/NavigationBarItemView$c;
    }
.end annotation


# static fields
.field public static final C:[I

.field public static final D:Lcom/google/android/material/navigation/NavigationBarItemView$c;

.field public static final E:Lcom/google/android/material/navigation/NavigationBarItemView$d;


# instance fields
.field public A:I

.field public B:Lcom/google/android/material/badge/BadgeDrawable;

.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:Z

.field public final i:Landroid/widget/FrameLayout;

.field public final j:Landroid/view/View;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/view/ViewGroup;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;

.field public o:I

.field public p:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/animation/ValueAnimator;

.field public u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

.field public v:F

.field public w:Z

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100a0

    .line 78
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:[I

    .line 104
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView$c;-><init>(I)V

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->D:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    .line 106
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$d;

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView$d;-><init>(I)V

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->E:Lcom/google/android/material/navigation/NavigationBarItemView$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->a:Z

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:I

    .line 110
    sget-object v1, Lcom/google/android/material/navigation/NavigationBarItemView;->D:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:F

    .line 112
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:Z

    .line 116
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:I

    .line 117
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    .line 118
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:Z

    .line 122
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:I

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->i:Landroid/widget/FrameLayout;

    .line 131
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_active_indicator_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    .line 132
    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/google/android/material/R$id;->navigation_bar_item_labels_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/view/ViewGroup;

    .line 134
    sget v2, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    .line 135
    sget v3, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemBackgroundResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemDefaultMarginResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    const/4 v0, 0x2

    .line 144
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 145
    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 146
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 147
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->a(FF)V

    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarItemView$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationBarItemView$a;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;FFI)V
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 543
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 544
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static e(Landroid/view/View;II)V
    .locals 1

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 532
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 535
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 536
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 537
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static g(ILandroid/view/View;)V
    .locals 3

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 548
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 660
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 661
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 662
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c(Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 6

    .line 797
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 800
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 801
    const-string v0, "NavigationBar"

    const-string v5, "Multiple badges shouldn\'t be attached to one item."

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 852
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 854
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-static {v0, v4}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    .line 856
    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    .line 804
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 837
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 838
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 840
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    .line 862
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 840
    :cond_3
    invoke-static {p1, v4, v3}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final f(I)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:I

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 733
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 744
    iget-boolean v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:I

    if-ne v2, v3, :cond_1

    move v2, p1

    goto :goto_0

    .line 738
    :cond_1
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 739
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 740
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    return-object v0
.end method

.method public getItemBackgroundResId()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 902
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_navigation_bar_item_background:I

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .locals 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    .line 912
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_margin:I

    return v0
.end method

.method public abstract getItemLayoutResId()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public getItemPosition()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 884
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v2, :cond_0

    .line 885
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 891
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 892
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 184
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v4

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 870
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeDrawable;->getHorizontalOffset()I

    move-result v2

    sub-int/2addr v1, v2

    .line 876
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 877
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 879
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v4

    .line 178
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 193
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setCheckable(Z)V

    .line 194
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 195
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setEnabled(Z)V

    .line 196
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 209
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 210
    invoke-static {p0, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 212
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->a:Z

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 570
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 486
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 492
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    .line 493
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 495
    :cond_1
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 519
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 522
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 523
    instance-of v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    .line 497
    invoke-static/range {v4 .. v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 496
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {p1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 506
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 508
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 303
    new-instance p2, Lcom/google/android/material/navigation/NavigationBarItemView$b;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView$b;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 784
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 788
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .locals 1

    .line 698
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:Z

    .line 699
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 700
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(I)V

    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 768
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:I

    .line 769
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(I)V

    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .locals 0

    .line 793
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:Z

    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:I

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(I)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 388
    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 389
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 390
    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 342
    :goto_0
    iget-boolean v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->a:Z

    if-eqz v7, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 347
    :cond_1
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v7, 0x0

    .line 349
    iput-object v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    .line 351
    :cond_2
    iget v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:F

    new-array v8, v4, [F

    aput v7, v8, v1

    aput v6, v8, v0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    .line 352
    new-instance v8, Lcom/google/android/material/navigation/a;

    invoke-direct {v8, p0, v6}, Lcom/google/android/material/navigation/a;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v9, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 361
    invoke-static {v7, v8, v9}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v7

    .line 360
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 366
    invoke-static {v7, v8, v9}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v7

    int-to-long v7, v7

    .line 365
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 331
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 332
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    invoke-virtual {v8, v6, v6, v7}, Lcom/google/android/material/navigation/NavigationBarItemView$c;->updateForProgress(FFLandroid/view/View;)V

    .line 334
    :cond_4
    iput v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:F

    .line 395
    :goto_2
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:I

    const/4 v7, -0x1

    const/16 v8, 0x11

    const/16 v9, 0x31

    iget-object v10, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/view/ViewGroup;

    const/4 v11, 0x4

    if-eq v6, v7, :cond_a

    if-eqz v6, :cond_8

    if-eq v6, v0, :cond_6

    if-eq v6, v4, :cond_5

    goto/16 :goto_5

    .line 468
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    invoke-static {v0, v1, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    const/16 v0, 0x8

    .line 469
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 448
    :cond_6
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v0, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    if-eqz p1, :cond_7

    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 451
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 455
    invoke-static {v2, v5, v5, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    .line 456
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    invoke-static {v3, v0, v0, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    goto/16 :goto_5

    .line 460
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 459
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 461
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    invoke-static {v2, v0, v0, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    .line 462
    invoke-static {v3, v5, v5, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    goto/16 :goto_5

    :cond_8
    if-eqz p1, :cond_9

    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 434
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 436
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v0, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    .line 437
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 440
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    invoke-static {v0, v4, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 441
    invoke-static {v1, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    .line 442
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :goto_3
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 397
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    .line 401
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 400
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 402
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v0, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    .line 403
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 406
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    invoke-static {v0, v4, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 407
    invoke-static {v1, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    .line 408
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_4
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 412
    :cond_c
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v0, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->g(ILandroid/view/View;)V

    if-eqz p1, :cond_d

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 415
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 419
    invoke-static {v2, v5, v5, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    .line 420
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    invoke-static {v3, v0, v0, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    goto :goto_5

    .line 424
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 423
    invoke-static {v0, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(Landroid/view/View;II)V

    .line 425
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    invoke-static {v2, v0, v0, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    .line 426
    invoke-static {v3, v5, v5, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;FFI)V

    .line 477
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 481
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 560
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 563
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 582
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 587
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 592
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->s:Landroid/graphics/drawable/Drawable;

    .line 593
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 594
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 620
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 621
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 622
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 611
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroid/content/res/ColorStateList;

    .line 612
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 613
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 614
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 668
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 675
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    .line 690
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    if-eq v0, p1, :cond_0

    .line 691
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    .line 380
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    .line 682
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    if-eq v0, p1, :cond_0

    .line 683
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:I

    .line 380
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 258
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:I

    if-eq v0, p1, :cond_1

    .line 259
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:I

    .line 744
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 314
    sget-object p1, Lcom/google/android/material/navigation/NavigationBarItemView;->E:Lcom/google/android/material/navigation/NavigationBarItemView$d;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    goto :goto_0

    .line 316
    :cond_0
    sget-object p1, Lcom/google/android/material/navigation/NavigationBarItemView;->D:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    .line 261
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(I)V

    .line 380
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:Z

    if-eq v0, p1, :cond_0

    .line 252
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:Z

    .line 380
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 644
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getUnscaledTextSize(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p1

    .line 648
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 644
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getUnscaledTextSize(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p1

    .line 648
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 627
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 274
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 285
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_4

    .line 286
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
