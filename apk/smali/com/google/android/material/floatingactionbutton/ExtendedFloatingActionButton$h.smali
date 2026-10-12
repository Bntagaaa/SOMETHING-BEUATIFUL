.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;
.super Lcom/google/android/material/floatingactionbutton/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public g:Z

.field public final synthetic h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    return-void
.end method


# virtual methods
.method public getDefaultMotionSpecResource()I
    .locals 1

    .line 1290
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_hide_motion_spec:I

    return v0
.end method

.method public onAnimationCancel()V
    .locals 1

    .line 1303
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/c;->onAnimationCancel()V

    const/4 v0, 0x1

    .line 1304
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->g:Z

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1309
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/c;->onAnimationEnd()V

    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    .line 1311
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->g:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 1312
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1295
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/c;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 1296
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->g:Z

    .line 1297
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 74
    iput p1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    return-void
.end method

.method public onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onHidden(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public performNow()V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldCancel()Z
    .locals 3

    .line 1285
    sget v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:I

    .line 690
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;->h:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 692
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 695
    :cond_0
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
