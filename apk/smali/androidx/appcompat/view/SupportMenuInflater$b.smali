.class Landroidx/appcompat/view/SupportMenuInflater$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Landroidx/appcompat/view/SupportMenuInflater;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroidx/core/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->E:Landroidx/appcompat/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->C:Landroid/content/res/ColorStateList;

    .line 338
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->a:Landroid/view/Menu;

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/SupportMenuInflater$b;->resetGroup()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 549
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->E:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 552
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 554
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot instantiate class: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->h:Z

    .line 531
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->b:I

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->i:I

    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->j:I

    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->k:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->a:Landroid/view/Menu;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$b;->b(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->h:Z

    .line 536
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->b:I

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->i:I

    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->j:I

    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->k:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->a:Landroid/view/Menu;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/SupportMenuInflater$b;->b(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 6

    .line 467
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->t:Z

    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->u:Z

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->l:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->m:I

    .line 472
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->v:I

    if-ltz v0, :cond_1

    .line 475
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->y:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->E:Landroidx/appcompat/view/SupportMenuInflater;

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, v1, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 483
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$a;

    .line 224
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 225
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/appcompat/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    .line 227
    :cond_2
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    .line 484
    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->y:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/SupportMenuInflater$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 480
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_4
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->r:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    .line 488
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_5

    .line 489
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 490
    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    .line 491
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 496
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 497
    sget-object v2, Landroidx/appcompat/view/SupportMenuInflater;->e:[Ljava/lang/Class;

    iget-object v1, v1, Landroidx/appcompat/view/SupportMenuInflater;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/appcompat/view/SupportMenuInflater$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 499
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 502
    :cond_7
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->w:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 504
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 507
    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_9
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->z:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_a

    .line 512
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    .line 515
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->A:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 517
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->n:C

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->o:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 519
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->p:C

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->q:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 521
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    .line 522
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 524
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    .line 525
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->h:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->E:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 370
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->b:I

    .line 371
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->c:I

    .line 373
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->d:I

    .line 374
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->e:I

    .line 376
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->f:Z

    .line 377
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->g:Z

    .line 379
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 7

    .line 386
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->E:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->MenuItem:[I

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 390
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->i:I

    .line 391
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->c:I

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 392
    sget v3, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->d:I

    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/high16 v4, -0x10000

    and-int/2addr v1, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 393
    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->j:I

    .line 395
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->k:Ljava/lang/CharSequence;

    .line 396
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->l:Ljava/lang/CharSequence;

    .line 397
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->m:I

    .line 398
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 399
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    :goto_0
    iput-char v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->n:C

    .line 400
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    const/16 v3, 0x1000

    .line 401
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->o:I

    .line 402
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 403
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 403
    :goto_1
    iput-char v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->p:C

    .line 404
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 405
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->q:I

    .line 406
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->r:I

    goto :goto_2

    .line 412
    :cond_2
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->e:I

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->r:I

    .line 414
    :goto_2
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->s:Z

    .line 415
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v3, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->f:Z

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->t:Z

    .line 416
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v3, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->g:Z

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->u:Z

    .line 417
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->v:I

    .line 418
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->y:Ljava/lang/String;

    .line 419
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->w:I

    .line 420
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->x:Ljava/lang/String;

    .line 421
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 424
    iget v6, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->w:I

    if-nez v6, :cond_4

    iget-object v6, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->x:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 425
    sget-object v4, Landroidx/appcompat/view/SupportMenuInflater;->f:[Ljava/lang/Class;

    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v1, v4, v0}, Landroidx/appcompat/view/SupportMenuInflater$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ActionProvider;

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->z:Landroidx/core/view/ActionProvider;

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 430
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_5
    iput-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->z:Landroidx/core/view/ActionProvider;

    .line 436
    :goto_4
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->A:Ljava/lang/CharSequence;

    .line 437
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->B:Ljava/lang/CharSequence;

    .line 438
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->D:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->D:Landroid/graphics/PorterDuff$Mode;

    goto :goto_5

    .line 444
    :cond_6
    iput-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_5
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 447
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->C:Landroid/content/res/ColorStateList;

    goto :goto_6

    .line 450
    :cond_7
    iput-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->C:Landroid/content/res/ColorStateList;

    .line 453
    :goto_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 455
    iput-boolean v2, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->h:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->b:I

    .line 357
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->c:I

    .line 358
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->d:I

    .line 359
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->e:I

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->f:Z

    .line 361
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$b;->g:Z

    return-void
.end method
