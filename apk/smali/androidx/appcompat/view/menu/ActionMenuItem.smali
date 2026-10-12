.class public Landroidx/appcompat/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/internal/view/SupportMenuItem;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/content/Intent;

.field public g:C

.field public h:I

.field public i:C

.field public j:I

.field public k:Landroid/graphics/drawable/Drawable;

.field public final l:Landroid/content/Context;

.field public m:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public n:Ljava/lang/CharSequence;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/content/res/ColorStateList;

.field public q:Landroid/graphics/PorterDuff$Mode;

.field public r:Z

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p4, 0x1000

    .line 54
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->h:I

    .line 56
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->j:I

    const/4 p4, 0x0

    .line 67
    iput-object p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->p:Landroid/content/res/ColorStateList;

    .line 68
    iput-object p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->q:Landroid/graphics/PorterDuff$Mode;

    const/4 p4, 0x0

    .line 69
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->r:Z

    .line 70
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->s:Z

    const/16 p4, 0x10

    .line 72
    iput p4, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    .line 81
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    .line 82
    iput p3, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->a:I

    .line 83
    iput p2, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->b:I

    .line 84
    iput p5, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->c:I

    .line 85
    iput-object p6, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 449
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->r:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->s:Z

    if-eqz v1, :cond_2

    .line 450
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    .line 451
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    .line 453
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->r:Z

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->p:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 457
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->s:Z

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->q:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 95
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->j:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 90
    iget-char v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->i:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 401
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 100
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->q:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->f:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 115
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->h:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 125
    iget-char v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->g:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 135
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 413
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 300
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->f:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 305
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 160
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 165
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 170
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 175
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requiresActionButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresOverflow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 351
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 330
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 180
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->i:C

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 187
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->i:C

    .line 188
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->j:I

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 194
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 205
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 395
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->n:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 211
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    return-object p0
.end method

.method public setExclusiveCheckable(Z)Landroidx/appcompat/view/menu/ActionMenuItem;
    .locals 1

    .line 199
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->a()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 217
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->k:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->a()V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 419
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 420
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->r:Z

    .line 422
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->a()V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 435
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->q:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 436
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->s:Z

    .line 438
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItem;->a()V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 233
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->f:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 239
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->g:C

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 246
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->g:C

    .line 247
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->h:I

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 389
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 253
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 259
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->g:C

    .line 260
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->i:C

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 268
    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->g:C

    .line 269
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->h:I

    .line 270
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->i:C

    .line 271
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->j:I

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 277
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 407
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->o:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 295
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int p1, v0, v1

    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItem;->t:I

    return-object p0
.end method
