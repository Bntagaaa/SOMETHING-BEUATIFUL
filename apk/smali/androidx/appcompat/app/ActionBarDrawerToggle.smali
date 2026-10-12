.class public Landroidx/appcompat/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggle$b;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$a;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

.field public final b:Landroidx/drawerlayout/widget/DrawerLayout;

.field public c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field public d:Z

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:Z

.field public final h:I

.field public final i:I

.field public j:Landroid/view/View$OnClickListener;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->d:Z

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->k:Z

    if-eqz p2, :cond_0

    .line 199
    new-instance p1, Landroidx/appcompat/app/ActionBarDrawerToggle$b;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 200
    new-instance p1, Landroidx/appcompat/app/a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/a;-><init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 210
    :cond_0
    instance-of p2, p1, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz p2, :cond_1

    .line 211
    check-cast p1, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 213
    :cond_1
    new-instance p2, Landroidx/appcompat/app/ActionBarDrawerToggle$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 216
    :goto_0
    iput-object p3, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 217
    iput p4, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->h:I

    .line 218
    iput p5, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->i:I

    .line 220
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget-object p2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 505
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 225
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 155
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    .line 186
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 491
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->k:Z

    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "ActionBarDrawerToggle"

    const-string v2, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->k:Z

    .line 497
    :cond_0
    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public final b(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 514
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method

.method public getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 373
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    return v0
.end method

.method public isDrawerSlideAnimationEnabled()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->d:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 260
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->g:Z

    if-nez p1, :cond_0

    .line 505
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 261
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 446
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    .line 447
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->h:I

    invoke-interface {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 431
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    .line 432
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->i:I

    invoke-interface {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 415
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 416
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    .line 285
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 287
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    :cond_0
    if-eq v1, v3, :cond_1

    .line 289
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setDrawerArrowDrawable(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0
    .param p1    # Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 382
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 383
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    .line 356
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 359
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->i:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->h:I

    .line 358
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 362
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 364
    :goto_1
    iput-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    :cond_2
    return-void
.end method

.method public setDrawerSlideAnimationEnabled(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 394
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 334
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 505
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->a:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 306
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    .line 307
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->g:Z

    goto :goto_0

    .line 309
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->g:Z

    .line 313
    :goto_0
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-nez p1, :cond_1

    .line 314
    iget-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 487
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public syncState()V
    .locals 3

    .line 238
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(F)V

    .line 243
    :goto_0
    iget-boolean v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->f:Z

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->c:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 245
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->i:I

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->h:I

    .line 244
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method
