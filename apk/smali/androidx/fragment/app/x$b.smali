.class Landroidx/fragment/app/x$b;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/view/View;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->e:Z

    .line 270
    iput-object p2, p0, Landroidx/fragment/app/x$b;->a:Landroid/view/ViewGroup;

    .line 271
    iput-object p3, p0, Landroidx/fragment/app/x$b;->b:Landroid/view/View;

    .line 272
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2
    .param p3    # Landroid/view/animation/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->e:Z

    .line 281
    iget-boolean v1, p0, Landroidx/fragment/app/x$b;->c:Z

    if-eqz v1, :cond_0

    .line 282
    iget-boolean p1, p0, Landroidx/fragment/app/x$b;->d:Z

    xor-int/2addr p1, v0

    return p1

    .line 284
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 286
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->c:Z

    .line 287
    iget-object p1, p0, Landroidx/fragment/app/x$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_1
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2
    .param p3    # Landroid/view/animation/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->e:Z

    .line 296
    iget-boolean v1, p0, Landroidx/fragment/app/x$b;->c:Z

    if-eqz v1, :cond_0

    .line 297
    iget-boolean p1, p0, Landroidx/fragment/app/x$b;->d:Z

    xor-int/2addr p1, v0

    return p1

    .line 299
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 301
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->c:Z

    .line 302
    iget-object p1, p0, Landroidx/fragment/app/x$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_1
    return v0
.end method

.method public run()V
    .locals 2

    .line 309
    iget-boolean v0, p0, Landroidx/fragment/app/x$b;->c:Z

    iget-object v1, p0, Landroidx/fragment/app/x$b;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/x$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->e:Z

    .line 312
    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x$b;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Landroidx/fragment/app/x$b;->d:Z

    return-void
.end method
