.class Lme/aemo/floatingview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/d;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 28
    iget-object p1, p0, Lme/aemo/floatingview/d;->a:Lme/aemo/floatingview/FloatingView;

    iget v0, p1, Lme/aemo/floatingview/FloatingView;->e:I

    .line 28
    iget v1, p1, Lme/aemo/floatingview/FloatingView;->g:I

    sub-int/2addr v0, v1

    .line 28
    iget v1, p1, Lme/aemo/floatingview/FloatingView;->f:I

    .line 28
    iget v2, p1, Lme/aemo/floatingview/FloatingView;->h:I

    sub-int/2addr v1, v2

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 28
    iget v4, p1, Lme/aemo/floatingview/FloatingView;->e:I

    sub-int/2addr v2, v4

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    .line 28
    iget v5, p1, Lme/aemo/floatingview/FloatingView;->f:I

    sub-int/2addr v4, v5

    .line 360
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    .line 28
    iput v5, p1, Lme/aemo/floatingview/FloatingView;->e:I

    .line 361
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 28
    iput v5, p1, Lme/aemo/floatingview/FloatingView;->f:I

    .line 362
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ge v0, v6, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v6, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iput-boolean v5, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    goto :goto_1

    .line 363
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, v3, :cond_3

    .line 28
    iget-object p2, p1, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    .line 364
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 365
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    iput-boolean v3, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    .line 28
    iget-object p2, p1, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz p2, :cond_6

    .line 368
    invoke-virtual {p1, v0, v1}, Lme/aemo/floatingview/FloatingView;->PositionMoved(II)V

    .line 28
    iget-object p2, p1, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    .line 28
    iget-object v0, p1, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 28
    iget-object v1, p1, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    .line 369
    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 28
    :cond_3
    iput-boolean v5, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    goto :goto_1

    .line 28
    :cond_4
    iget-boolean p2, p1, Lme/aemo/floatingview/FloatingView;->d:Z

    xor-int/2addr p2, v3

    .line 28
    iput-boolean p2, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    goto :goto_1

    .line 348
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 28
    iput v0, p1, Lme/aemo/floatingview/FloatingView;->e:I

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 28
    iput p2, p1, Lme/aemo/floatingview/FloatingView;->f:I

    .line 28
    iget p2, p1, Lme/aemo/floatingview/FloatingView;->e:I

    .line 28
    iput p2, p1, Lme/aemo/floatingview/FloatingView;->g:I

    .line 28
    iget p2, p1, Lme/aemo/floatingview/FloatingView;->f:I

    .line 28
    iput p2, p1, Lme/aemo/floatingview/FloatingView;->h:I

    .line 28
    iget-boolean p2, p1, Lme/aemo/floatingview/FloatingView;->d:Z

    xor-int/2addr p2, v3

    .line 28
    iput-boolean p2, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    .line 28
    :cond_6
    :goto_1
    iget-boolean p1, p1, Lme/aemo/floatingview/FloatingView;->c:Z

    return p1
.end method
