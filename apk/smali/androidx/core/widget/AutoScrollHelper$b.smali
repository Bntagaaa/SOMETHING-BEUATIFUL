.class Landroidx/core/widget/AutoScrollHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method public constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$b;->a:Landroidx/core/widget/AutoScrollHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 700
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$b;->a:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    if-nez v1, :cond_0

    return-void

    .line 704
    :cond_0
    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->m:Z

    iget-object v2, v0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 705
    iput-boolean v3, v0, Landroidx/core/widget/AutoScrollHelper;->m:Z

    .line 706
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->start()V

    .line 710
    :cond_1
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper;->d()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 715
    :cond_2
    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->n:Z

    iget-object v4, v0, Landroidx/core/widget/AutoScrollHelper;->c:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 716
    iput-boolean v3, v0, Landroidx/core/widget/AutoScrollHelper;->n:Z

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v7, v5

    .line 688
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 690
    invoke-virtual {v4, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 691
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 720
    :cond_3
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->computeScrollDelta()V

    .line 722
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->getDeltaX()I

    move-result v1

    .line 723
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->getDeltaY()I

    move-result v2

    .line 724
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 727
    invoke-static {v4, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 711
    :cond_4
    :goto_0
    iput-boolean v3, v0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    return-void
.end method
