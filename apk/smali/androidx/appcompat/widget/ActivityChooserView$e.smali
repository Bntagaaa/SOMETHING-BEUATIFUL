.class Landroidx/appcompat/widget/ActivityChooserView$e;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 285
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$e;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 549
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserView$e;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 549
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getCount()I

    move-result v4

    iget-object v5, v2, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    if-lez v4, :cond_0

    .line 550
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 555
    :goto_0
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getActivityCount()I

    move-result v4

    .line 556
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getHistorySize()I

    move-result v5

    .line 557
    iget-object v6, v2, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    if-eq v4, v0, :cond_2

    if-le v4, v0, :cond_1

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 569
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 558
    :cond_2
    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 560
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 561
    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, v2, Landroidx/appcompat/widget/ActivityChooserView;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget v5, v2, Landroidx/appcompat/widget/ActivityChooserView;->r:I

    if-eqz v5, :cond_3

    .line 563
    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 564
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v2, Landroidx/appcompat/widget/ActivityChooserView;->r:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, v2, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/view/View;

    if-nez v0, :cond_4

    .line 573
    iget-object v0, v2, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 575
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
