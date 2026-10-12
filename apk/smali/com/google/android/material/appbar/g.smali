.class abstract Lcom/google/android/material/appbar/g;
.super Lcom/google/android/material/appbar/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/i<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Runnable;

.field public e:Landroid/widget/OverScroller;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/appbar/i;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/google/android/material/appbar/g;->g:I

    .line 47
    iput v0, p0, Lcom/google/android/material/appbar/g;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/google/android/material/appbar/g;->g:I

    .line 47
    iput p1, p0, Lcom/google/android/material/appbar/g;->i:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/appbar/i;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 170
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/i;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/g;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/google/android/material/appbar/g;->i:I

    if-gez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/g;->i:I

    .line 64
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/g;->f:Z

    if-eqz v0, :cond_3

    .line 65
    iget v0, p0, Lcom/google/android/material/appbar/g;->g:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 75
    iget v1, p0, Lcom/google/android/material/appbar/g;->h:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 76
    iget v5, p0, Lcom/google/android/material/appbar/g;->i:I

    if-le v1, v5, :cond_3

    .line 77
    iput v0, p0, Lcom/google/android/material/appbar/g;->h:I

    return v2

    .line 82
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    .line 83
    iput v3, p0, Lcom/google/android/material/appbar/g;->g:I

    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 86
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 87
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/g;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/appbar/g;->f:Z

    if-eqz p1, :cond_6

    .line 89
    iput v1, p0, Lcom/google/android/material/appbar/g;->h:I

    .line 90
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/g;->g:I

    .line 254
    iget-object p1, p0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    .line 255
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_6

    .line 95
    iget-object p1, p0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return v2

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 102
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_1
    return v4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    .line 112
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v7, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 127
    :goto_0
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/appbar/g;->g:I

    .line 128
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/google/android/material/appbar/g;->h:I

    goto :goto_1

    .line 114
    :cond_2
    iget v1, v0, Lcom/google/android/material/appbar/g;->g:I

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    goto/16 :goto_5

    .line 119
    :cond_3
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 120
    iget v3, v0, Lcom/google/android/material/appbar/g;->h:I

    sub-int/2addr v3, v1

    .line 121
    iput v1, v0, Lcom/google/android/material/appbar/g;->h:I

    .line 123
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/g;->c(Landroid/view/View;)I

    move-result v4

    .line 191
    invoke-virtual {v0}, Lcom/google/android/material/appbar/g;->a()I

    move-result v1

    sub-int v3, v1, v3

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/g;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 131
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 133
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 134
    iget-object v1, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 135
    iget-object v1, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    iget v5, v0, Lcom/google/android/material/appbar/g;->g:I

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/g;->d(Landroid/view/View;)I

    move-result v5

    neg-int v5, v5

    .line 202
    iget-object v9, v0, Lcom/google/android/material/appbar/g;->d:Ljava/lang/Runnable;

    if-eqz v9, :cond_5

    .line 203
    invoke-virtual {v2, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    iput-object v3, v0, Lcom/google/android/material/appbar/g;->d:Ljava/lang/Runnable;

    .line 207
    :cond_5
    iget-object v9, v0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    if-nez v9, :cond_6

    .line 208
    new-instance v9, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    .line 211
    :cond_6
    iget-object v9, v0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/material/appbar/i;->getTopAndBottomOffset()I

    move-result v11

    .line 215
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v16, v5

    .line 211
    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 221
    iget-object v1, v0, Lcom/google/android/material/appbar/g;->e:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    new-instance v1, Lcom/google/android/material/appbar/g$a;

    move-object/from16 v5, p1

    invoke-direct {v1, v0, v5, v2}, Lcom/google/android/material/appbar/g$a;-><init>(Lcom/google/android/material/appbar/g;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/appbar/g;->d:Ljava/lang/Runnable;

    .line 223
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    move-object/from16 v5, p1

    .line 226
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/material/appbar/g;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 141
    :goto_3
    iput-boolean v8, v0, Lcom/google/android/material/appbar/g;->f:Z

    .line 142
    iput v4, v0, Lcom/google/android/material/appbar/g;->g:I

    .line 143
    iget-object v2, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_9

    .line 144
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 145
    iput-object v3, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    .line 150
    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/google/android/material/appbar/g;->j:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    .line 151
    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 154
    :cond_a
    iget-boolean v2, v0, Lcom/google/android/material/appbar/g;->f:Z

    if-nez v2, :cond_c

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    return v8

    :cond_c
    :goto_6
    return v7
.end method
