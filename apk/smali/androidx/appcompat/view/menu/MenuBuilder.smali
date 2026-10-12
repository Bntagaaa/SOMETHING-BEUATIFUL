.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field public static final A:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/res/Resources;

.field public c:Z

.field public d:Z

.field public e:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:Z

.field public l:I

.field public m:Landroid/view/ContextMenu$ContextMenuInfo;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/view/View;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public final v:Ljava/util/ArrayList;

.field public final w:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public x:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 68
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->A:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->l:I

    .line 159
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    .line 161
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    .line 163
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->s:Z

    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->t:Z

    .line 167
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->u:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->v:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->y:Z

    .line 224
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->h:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->i:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->j:Ljava/util/ArrayList;

    .line 233
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    .line 235
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->f(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 836
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->e:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 483
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 478
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 522
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 525
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 528
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 532
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 533
    new-instance v3, Landroid/content/Intent;

    .line 534
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 535
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 539
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 540
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 541
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    .line 542
    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_3

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 787
    sget-object v1, Landroidx/appcompat/view/menu/MenuBuilder;->A:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int v7, v0, v1

    .line 445
    iget v9, p0, Landroidx/appcompat/view/menu/MenuBuilder;->l:I

    .line 462
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 448
    iget-object p1, v3, Landroidx/appcompat/view/menu/MenuBuilder;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_0

    .line 688
    iput-object p1, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 453
    :cond_0
    iget-object p1, v3, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    .line 849
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_2

    .line 850
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 851
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getOrdering()I

    move-result p4

    if-gt p4, v7, :cond_1

    add-int/2addr p2, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 453
    :goto_1
    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 454
    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object v2

    :cond_3
    move-object v3, p0

    .line 784
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "order does not contain a valid category."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 493
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 507
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 499
    new-instance p2, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 500
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 10

    .line 932
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->v:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 934
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Ljava/util/ArrayList;ILandroid/view/KeyEvent;)V

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 940
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 941
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 943
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 946
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1

    .line 948
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p1

    .line 951
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_7

    .line 955
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_2

    .line 956
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    goto :goto_1

    .line 957
    :cond_2
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    .line 958
    :goto_1
    iget-object v8, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v8, v4

    if-ne v7, v9, :cond_3

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_5

    :cond_3
    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-ne v7, v8, :cond_4

    and-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    const/16 v7, 0x43

    if-ne p1, v7, :cond_6

    :cond_5
    return-object v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/util/ArrayList;ILandroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 884
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v3

    .line 885
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    .line 886
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 888
    invoke-virtual {v2, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    const/16 v7, 0x43

    if-nez v6, :cond_0

    if-eq v1, v7, :cond_0

    move-object/from16 v6, p0

    goto :goto_3

    :cond_0
    move-object/from16 v6, p0

    .line 895
    iget-object v8, v6, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    .line 897
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 898
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 899
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v13, v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Ljava/util/ArrayList;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 902
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v13

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v13

    :goto_1
    if-eqz v3, :cond_3

    .line 904
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v14

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v14

    :goto_2
    const v15, 0x1100f

    const/16 v16, 0x0

    and-int v10, v4, v15

    and-int/2addr v14, v15

    if-ne v10, v14, :cond_5

    if-eqz v13, :cond_5

    .line 907
    iget-object v10, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v14, v10, v16

    if-eq v13, v14, :cond_4

    const/4 v14, 0x2

    aget-char v10, v10, v14

    if-eq v13, v10, :cond_4

    if-eqz v3, :cond_5

    const/16 v10, 0x8

    if-ne v13, v10, :cond_5

    if-ne v1, v7, :cond_5

    .line 912
    :cond_4
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 913
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public changeMenuMode()V
    .locals 1

    .line 843
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->e:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 609
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearAll()V
    .locals 2

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    .line 595
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 596
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clearHeader()V

    .line 597
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 598
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    .line 599
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    .line 600
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->s:Z

    .line 601
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1215
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/graphics/drawable/Drawable;

    .line 1216
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->n:Ljava/lang/CharSequence;

    .line 1217
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->p:Landroid/view/View;

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1048
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 4

    .line 1032
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1034
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->u:Z

    .line 1035
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1036
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v3, :cond_1

    .line 1038
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1040
    :cond_1
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1043
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->u:Z

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5

    .line 1375
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1380
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1381
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v4, :cond_2

    .line 1383
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1384
    :cond_2
    invoke-interface {v4, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 1391
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    :cond_4
    :goto_1
    return v2
.end method

.method public final d(IZ)V
    .locals 2

    if-ltz p1, :cond_1

    .line 582
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 586
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 1227
    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->p:Landroid/view/View;

    .line 1230
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->n:Ljava/lang/CharSequence;

    .line 1231
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    .line 1234
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->n:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1236
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->n:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 1240
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 1242
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/graphics/drawable/Drawable;

    .line 1246
    :cond_4
    :goto_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->p:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    .line 1250
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5

    .line 1353
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1357
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1358
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1359
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v4, :cond_2

    .line 1361
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1362
    :cond_2
    invoke-interface {v4, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v2, :cond_4

    .line 1369
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    :cond_4
    return v2
.end method

.method public final f(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 814
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->b:Landroid/content/res/Resources;

    .line 815
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 817
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 816
    invoke-static {v1, p1}, Landroidx/core/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->d:Z

    return-void
.end method

.method public findGroupIndex(I)I
    .locals 1

    const/4 v0, 0x0

    .line 726
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .locals 2

    .line 730
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 737
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 739
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 695
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 697
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 698
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 700
    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findItemIndex(I)I
    .locals 3

    .line 713
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 717
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public flagActionItems()V
    .locals 8

    .line 1165
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1167
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 1173
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1174
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v6, :cond_1

    .line 1176
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1178
    :cond_1
    invoke-interface {v6}, Landroidx/appcompat/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->j:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1183
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1184
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1185
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    .line 1187
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1188
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1189
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1191
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1197
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1198
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1199
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1201
    :cond_5
    iput-boolean v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1206
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .line 432
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 832
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 1397
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1318
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1314
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1322
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->p:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1120
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->h:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object v1

    .line 1123
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1128
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1129
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1132
    :cond_2
    iput-boolean v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->h:Z

    const/4 v0, 0x1

    .line 1133
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    return-object v1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 677
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 684
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 685
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->y:Z

    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->c:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 759
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->b(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->d:Z

    return v0
.end method

.method public onItemsChanged(Z)V
    .locals 4

    .line 1059
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    .line 1061
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->h:Z

    .line 1062
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->k:Z

    .line 284
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 288
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v3, :cond_2

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    .line 1067
    :cond_4
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    if-eqz p1, :cond_5

    .line 1069
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->s:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 973
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .locals 6

    .line 981
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 983
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 987
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 989
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 990
    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 991
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 992
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 994
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_2
    return p1

    .line 996
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    .line 1016
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_5
    return v1

    :cond_6
    :goto_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_7

    .line 999
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1002
    :cond_7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_8

    .line 1003
    new-instance p3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p3, v5, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 1006
    :cond_8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_9

    .line 1008
    invoke-virtual {v2, p1}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 300
    :cond_9
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    .line 306
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 309
    :cond_b
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 310
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v4, :cond_d

    .line 312
    invoke-virtual {p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    if-nez v0, :cond_c

    .line 314
    invoke-interface {v4, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    goto :goto_2

    :cond_e
    :goto_3
    or-int p1, v1, v0

    if-nez p1, :cond_f

    .line 1012
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_f
    return p1

    :cond_10
    :goto_4
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 861
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->b(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 870
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_1
    return p1
.end method

.method public removeGroup(I)V
    .locals 6

    .line 556
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 559
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v4, v2, :cond_0

    .line 561
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 563
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->d(IZ)V

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 567
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 551
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->d(IZ)V

    return-void
.end method

.method public removeItemAt(I)V
    .locals 1

    const/4 v0, 0x1

    .line 590
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->d(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 4

    .line 275
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 276
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    .line 278
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 411
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 412
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 414
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 416
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 418
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_3
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 424
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .line 345
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 347
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 350
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v3, :cond_2

    .line 352
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_2
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v2

    if-lez v2, :cond_1

    .line 356
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 358
    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 378
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 379
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 384
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 389
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 391
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 396
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 5

    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 325
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 326
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    if-nez v4, :cond_2

    .line 328
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_2
    invoke-interface {v4}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v3

    if-lez v3, :cond_1

    .line 332
    invoke-interface {v4}, Landroidx/appcompat/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 334
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 340
    :cond_3
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 436
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->e:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 239
    iput p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->l:I

    return-object p0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5

    .line 634
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 637
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 638
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 639
    invoke-virtual {v3, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 640
    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->y:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 5

    .line 665
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 668
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 669
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 670
    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 10

    .line 647
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    .line 654
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 655
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 661
    iget v7, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->y:I

    and-int/lit8 v8, v7, -0x9

    if-eqz p2, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    const/16 v9, 0x8

    :goto_1
    or-int/2addr v8, v9

    .line 662
    iput v8, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->y:I

    if-eq v7, v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 660
    invoke-virtual {p0, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_3
    return-void
.end method

.method public setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    .line 1297
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1285
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 1273
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1261
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1309
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->e(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0

    .line 1345
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->t:Z

    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0

    .line 1406
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->z:Z

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 764
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->c:Z

    const/4 p1, 0x0

    .line 766
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 805
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 809
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->f(Z)V

    const/4 p1, 0x0

    .line 810
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 749
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 1088
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    .line 1090
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    if-eqz v1, :cond_0

    .line 1091
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    .line 1092
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->s:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .line 1080
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1081
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->q:Z

    const/4 v0, 0x0

    .line 1082
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->r:Z

    .line 1083
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->s:Z

    :cond_0
    return-void
.end method
