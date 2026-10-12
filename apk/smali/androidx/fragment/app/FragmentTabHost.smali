.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$b;,
        Landroidx/fragment/app/FragmentTabHost$a;,
        Landroidx/fragment/app/FragmentTabHost$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/content/Context;

.field public d:Landroidx/fragment/app/FragmentManager;

.field public e:I

.field public f:Landroid/widget/TabHost$OnTabChangeListener;

.field public g:Landroidx/fragment/app/FragmentTabHost$c;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    const v1, 0x10100f3

    .line 153
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    const v0, 0x10100f3

    .line 153
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 5

    .line 433
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 434
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTabHost$c;

    .line 435
    iget-object v4, v3, Landroidx/fragment/app/FragmentTabHost$c;->a:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 403
    :goto_1
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->g:Landroidx/fragment/app/FragmentTabHost$c;

    if-eq p2, v3, :cond_6

    if-nez p1, :cond_2

    .line 405
    iget-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 408
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->g:Landroidx/fragment/app/FragmentTabHost$c;

    if-eqz p2, :cond_3

    .line 409
    iget-object p2, p2, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 410
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    if-eqz v3, :cond_5

    .line 415
    iget-object p2, v3, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    if-nez p2, :cond_4

    .line 416
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p2

    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroid/content/Context;

    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, v3, Landroidx/fragment/app/FragmentTabHost$c;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, v3, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    .line 418
    iget-object v0, v3, Landroidx/fragment/app/FragmentTabHost$c;->c:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 419
    iget p2, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    iget-object v0, v3, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    iget-object v1, v3, Landroidx/fragment/app/FragmentTabHost$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    .line 421
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 425
    :cond_5
    :goto_2
    iput-object v3, p0, Landroidx/fragment/app/FragmentTabHost;->g:Landroidx/fragment/app/FragmentTabHost$c;

    :cond_6
    return-object p1
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/widget/TabHost$TabSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    new-instance v0, Landroidx/fragment/app/FragmentTabHost$a;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentTabHost$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 272
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$c;

    invoke-direct {v1, p3, v0, p2}, Landroidx/fragment/app/FragmentTabHost$c;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    .line 275
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentTabHost;->h:Z

    if-eqz p2, :cond_0

    .line 279
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, v1, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    .line 281
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 282
    iget-object p3, v1, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 283
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 287
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 242
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 243
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No tab content FrameLayout found for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 7

    const v0, 0x1020013

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x1020011

    .line 179
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 180
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    .line 183
    iget p1, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    .line 184
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 301
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 307
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTabHost$c;

    .line 308
    iget-object v6, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    iget-object v7, v5, Landroidx/fragment/app/FragmentTabHost$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    iput-object v6, v5, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_2

    .line 309
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_2

    .line 310
    iget-object v6, v5, Landroidx/fragment/app/FragmentTabHost$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    iput-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->g:Landroidx/fragment/app/FragmentTabHost$c;

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 319
    iget-object v3, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 321
    :cond_1
    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost$c;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 328
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTabHost;->h:Z

    .line 329
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/FragmentTabHost;->a(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 332
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->h:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$b;

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 375
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentTabHost$b;

    .line 376
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 377
    iget-object p1, p1, Landroidx/fragment/app/FragmentTabHost$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 358
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$b;

    .line 92
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 359
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/FragmentTabHost$b;->a:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTabHost;->a(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 394
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1    # Landroid/widget/TabHost$OnTabChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->c(Landroid/content/Context;)V

    .line 210
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 211
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->b()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->c(Landroid/content/Context;)V

    .line 227
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 228
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:Landroidx/fragment/app/FragmentManager;

    .line 230
    iput p3, p0, Landroidx/fragment/app/FragmentTabHost;->e:I

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->b()V

    .line 232
    iget-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const p1, 0x1020012

    .line 237
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_0
    return-void
.end method
