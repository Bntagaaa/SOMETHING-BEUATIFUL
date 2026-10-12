.class public Landroidx/appcompat/widget/ShareActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ShareActionProvider$a;,
        Landroidx/appcompat/widget/ShareActionProvider$b;,
        Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field public final d:I

.field public final e:Landroidx/appcompat/widget/ShareActionProvider$b;

.field public final f:Landroid/content/Context;

.field public g:Ljava/lang/String;

.field public h:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field public i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 164
    iput v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->d:I

    .line 169
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$b;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->e:Landroidx/appcompat/widget/ShareActionProvider$b;

    .line 185
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 6

    .line 222
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActivityChooserView;->setActivityChooserModel(Landroidx/appcompat/widget/ActivityChooserModel;)V

    .line 229
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 230
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->actionModeShareDrawable:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 231
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActivityChooserView;->setProvider(Landroidx/core/view/ActionProvider;)V

    .line 236
    sget v1, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 238
    sget v1, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10

    .line 258
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 260
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 263
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    .line 264
    iget v4, p0, Landroidx/appcompat/widget/ShareActionProvider;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 267
    :goto_0
    iget-object v7, p0, Landroidx/appcompat/widget/ShareActionProvider;->e:Landroidx/appcompat/widget/ShareActionProvider$b;

    if-ge v6, v4, :cond_0

    .line 268
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 269
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p1, v5, v6, v6, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    .line 270
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v8

    .line 271
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-ge v4, v3, :cond_1

    .line 276
    sget v6, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    .line 278
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-interface {p1, v5, v4, v4, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v5, v1, v1, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 282
    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 283
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 1

    .line 212
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->h:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez p1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez p1, :cond_1

    .line 387
    new-instance p1, Landroidx/appcompat/widget/ShareActionProvider$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ShareActionProvider$a;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V

    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 1

    .line 321
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->h:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$a;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->i:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V

    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x8080000

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->f:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
