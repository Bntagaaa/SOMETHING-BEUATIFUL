.class public Landroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuPopupHelper$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public j:Landroidx/appcompat/view/menu/d;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 83
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 64
    iput v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->g:I

    .line 343
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/MenuPopupHelper$a;-><init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 89
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->a:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 91
    iput-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    .line 92
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->c:Z

    .line 93
    iput p5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->d:I

    .line 94
    iput p6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->e:I

    return-void
.end method


# virtual methods
.method public final a(IIZZ)V
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/d;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/d;->setShowTitle(Z)V

    if-eqz p3, :cond_1

    .line 279
    iget p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->g:I

    iget-object p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    .line 280
    invoke-static {p4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p4

    .line 279
    invoke-static {p3, p4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    .line 282
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 285
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/d;->setHorizontalOffset(I)V

    .line 286
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/d;->setVerticalOffset(I)V

    .line 292
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 294
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/d;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 299
    :cond_1
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->show()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 307
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 143
    iget v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->g:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/d;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/view/menu/d;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 235
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 236
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 239
    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper$b;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 244
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 251
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->a:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->d:I

    iget v6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->e:I

    iget-boolean v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->c:Z

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_0

    .line 254
    :cond_0
    new-instance v3, Landroidx/appcompat/view/menu/e;

    iget-object v6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->d:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->a:Landroid/content/Context;

    iget v8, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->e:I

    iget-boolean v9, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->c:Z

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    move-object v2, v3

    .line 259
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 260
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d;->setAnchorView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-interface {v2, v0}, Landroidx/appcompat/view/menu/MenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 265
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->h:Z

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d;->setForceShowIcon(Z)V

    .line 266
    iget v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->g:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d;->setGravity(I)V

    .line 165
    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    .line 167
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    .line 323
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .line 122
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->h:Z

    .line 123
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/d;->setForceShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 136
    iput p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->g:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 335
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->j:Landroidx/appcompat/view/menu/d;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(II)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryShow()Z
    .locals 3

    .line 177
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 185
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->a(IIZZ)V

    return v1
.end method

.method public tryShow(II)Z
    .locals 2

    .line 213
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->f:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->a(IIZZ)V

    return v1
.end method
