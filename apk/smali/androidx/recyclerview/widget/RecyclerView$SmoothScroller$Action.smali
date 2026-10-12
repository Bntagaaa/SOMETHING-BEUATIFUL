.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/view/animation/Interpolator;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 13014
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 13023
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12999
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->d:I

    const/4 v0, 0x0

    .line 13003
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 13007
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->g:I

    .line 13035
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    .line 13036
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 13037
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 13038
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 13065
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    .line 13067
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->d:I

    .line 13068
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 13069
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    return-void

    .line 13072
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    if-eqz v0, :cond_5

    .line 13089
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    if-lt v3, v2, :cond_1

    goto :goto_0

    .line 13090
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13092
    :cond_2
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    if-lt v3, v2, :cond_4

    .line 13074
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$l;

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    invoke-virtual {p1, v4, v5, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$l;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 13075
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 13079
    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13082
    :cond_3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    return-void

    .line 13093
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13084
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->g:I

    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 13118
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    return v0
.end method

.method public getDx()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 13099
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    return v0
.end method

.method public getDy()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 13109
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13128
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public jumpTo(I)V
    .locals 0

    .line 13057
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->d:I

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    .line 13122
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 13123
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 13103
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 13104
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 13113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 13114
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 13139
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 13140
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13154
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    .line 13155
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 13156
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 13157
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 13158
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    return-void
.end method
