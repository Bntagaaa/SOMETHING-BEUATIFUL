.class Landroidx/constraintlayout/motion/widget/MotionLayout$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public d:I

.field public final synthetic e:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1343
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    .line 1344
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    const/4 p1, -0x1

    .line 1345
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 1346
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1353
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    if-eq v3, v2, :cond_3

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1355
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_0

    .line 1356
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    if-ne v3, v2, :cond_2

    .line 1357
    invoke-virtual {v1, v0, v2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    goto :goto_0

    .line 1359
    :cond_2
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 1361
    :goto_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->n(Landroidx/constraintlayout/motion/widget/MotionLayout$h;)V

    .line 1363
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1364
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1367
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 1370
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1371
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    .line 1372
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    .line 1373
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 1374
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 3

    .line 1378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1379
    const-string v1, "motion.progress"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1380
    const-string v1, "motion.velocity"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1381
    const-string v1, "motion.StartState"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1382
    const-string v1, "motion.EndState"

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public recordState()V
    .locals 2

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 1410
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    .line 859
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    .line 1411
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 1412
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    .line 1413
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    return-void
.end method

.method public setEndState(I)V
    .locals 0

    .line 1398
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1394
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    return-void
.end method

.method public setStartState(I)V
    .locals 0

    .line 1406
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    .line 1387
    const-string v0, "motion.progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    .line 1388
    const-string v0, "motion.velocity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    .line 1389
    const-string v0, "motion.StartState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 1390
    const-string v0, "motion.EndState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void
.end method

.method public setVelocity(F)V
    .locals 0

    .line 1402
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    return-void
.end method
