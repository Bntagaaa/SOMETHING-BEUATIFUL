.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/PagerTitleStrip$a;,
        Landroidx/viewpager/widget/PagerTitleStrip$b;
    }
.end annotation


# static fields
.field public static final o:[I

.field public static final p:[I


# instance fields
.field public a:Landroidx/viewpager/widget/ViewPager;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public final k:Landroidx/viewpager/widget/PagerTitleStrip$a;

.field public l:Ljava/lang/ref/WeakReference;

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010098

    const v1, 0x10100af

    const v2, 0x1010034

    const v3, 0x1010095

    .line 73
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->o:[I

    const v0, 0x101038c

    .line 80
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->p:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 62
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    .line 69
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$a;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTitleStrip$a;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Landroidx/viewpager/widget/PagerTitleStrip$a;

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    sget-object v3, Landroidx/viewpager/widget/PagerTitleStrip;->o:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-static {v0, v4}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 123
    invoke-static {v1, v4}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 124
    invoke-static {v2, v4}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    const/4 v5, 0x1

    .line 126
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-eqz v5, :cond_1

    int-to-float v5, v5

    .line 128
    invoke-virtual {p0, v3, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    :cond_1
    const/4 v5, 0x2

    .line 130
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 132
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v5, 0x3

    const/16 v6, 0x50

    .line 136
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->n:I

    const p2, 0x3f19999a    # 0.6f

    .line 140
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 142
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v4, :cond_3

    .line 148
    sget-object p2, Landroidx/viewpager/widget/PagerTitleStrip;->p:[I

    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 149
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 150
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-eqz v3, :cond_4

    .line 154
    invoke-static {v0}, Landroidx/viewpager/widget/PagerTitleStrip;->b(Landroid/widget/TextView;)V

    .line 155
    invoke-static {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->b(Landroid/widget/TextView;)V

    .line 156
    invoke-static {v2}, Landroidx/viewpager/widget/PagerTitleStrip;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 160
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41800000    # 16.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 164
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    return-void
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 2

    .line 105
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    invoke-direct {v0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip$b;->a:Ljava/util/Locale;

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Landroidx/viewpager/widget/PagerTitleStrip$a;

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->l:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p2, :cond_1

    .line 319
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->l:Ljava/lang/ref/WeakReference;

    .line 322
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 323
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 324
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    .line 325
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->d(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 326
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final d(ILandroidx/viewpager/widget/PagerAdapter;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 269
    iput-boolean v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    const/4 v3, 0x0

    if-lt p1, v2, :cond_1

    if-eqz p2, :cond_1

    add-int/lit8 v2, p1, -0x1

    .line 273
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 275
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-ge p1, v1, :cond_2

    .line 278
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 277
    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, p1, 0x1

    if-ge v5, v1, :cond_3

    if-eqz p2, :cond_3

    .line 282
    invoke-virtual {p2, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 284
    :cond_3
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 288
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, -0x80000000

    .line 289
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 291
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 292
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 293
    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    .line 294
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 295
    invoke-virtual {p2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 297
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    .line 299
    iget-boolean p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    if-nez p2, :cond_4

    .line 300
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->e(IFZ)V

    .line 303
    :cond_4
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    return-void
.end method

.method public e(IFZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 331
    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    if-eq v1, v3, :cond_0

    .line 332
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->d(ILandroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 333
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 337
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    .line 339
    iget-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 340
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 341
    iget-object v6, v0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 342
    div-int/lit8 v8, v5, 0x2

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 347
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int v15, v11, v8

    add-int v16, v12, v8

    sub-int v15, v9, v15

    sub-int v15, v15, v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v17, v2, v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v19, v17, v18

    if-lez v19, :cond_2

    sub-float v17, v17, v18

    :cond_2
    sub-int v16, v9, v16

    int-to-float v15, v15

    mul-float v15, v15, v17

    float-to-int v15, v15

    sub-int v16, v16, v15

    sub-int v8, v16, v8

    add-int/2addr v5, v8

    .line 362
    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v15

    move/from16 p1, v3

    .line 363
    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    move/from16 p3, v7

    .line 364
    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    move/from16 v16, v9

    .line 365
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v15, v9, v15

    sub-int v3, v9, v3

    sub-int/2addr v9, v7

    .line 369
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v15

    .line 370
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v18, v3

    add-int v3, v17, v18

    .line 371
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v19, v9

    add-int v9, v17, v19

    .line 372
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 375
    iget v7, v0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x10

    if-eq v7, v9, :cond_4

    const/16 v9, 0x50

    if-eq v7, v9, :cond_3

    add-int/2addr v15, v13

    add-int v3, v13, v18

    add-int v13, v13, v19

    goto :goto_2

    :cond_3
    sub-int/2addr v10, v14

    sub-int/2addr v10, v3

    :goto_1
    add-int/2addr v15, v10

    add-int v3, v10, v18

    add-int v13, v10, v19

    goto :goto_2

    :cond_4
    sub-int/2addr v10, v13

    sub-int/2addr v10, v14

    sub-int/2addr v10, v3

    .line 389
    div-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 403
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 402
    invoke-virtual {v4, v8, v3, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 405
    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    sub-int/2addr v8, v3

    sub-int v8, v8, p1

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, v3, p1

    .line 407
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v15

    .line 406
    invoke-virtual {v1, v3, v15, v4, v7}, Landroid/view/View;->layout(IIII)V

    sub-int v9, v16, v12

    sub-int v9, v9, p3

    .line 409
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    add-int/2addr v5, v1

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v7, v1, p3

    .line 412
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v13

    .line 411
    invoke-virtual {v6, v1, v13, v7, v3}, Landroid/view/View;->layout(IIII)V

    .line 414
    iput v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    const/4 v1, 0x0

    .line 415
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    return-void
.end method

.method public getTextSpacing()I
    .locals 1

    .line 181
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 239
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 242
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    .line 247
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 248
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    .line 816
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Landroidx/viewpager/widget/PagerTitleStrip$a;

    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 251
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 252
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 253
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/PagerAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->c(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 258
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->c(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 261
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 815
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 816
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 262
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Landroidx/viewpager/widget/PagerTitleStrip$a;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 263
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 456
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_1

    .line 457
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 458
    :goto_0
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->e(IFZ)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, -0x2

    .line 426
    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 429
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v5, v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 431
    invoke-static {p1, v5, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 434
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/view/View;->measure(II)V

    .line 435
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/view/View;->measure(II)V

    .line 436
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v3}, Landroid/view/View;->measure(II)V

    .line 439
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 444
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->a()I

    move-result v1

    add-int/2addr p1, v2

    .line 445
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 448
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 449
    invoke-static {p1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 451
    invoke-virtual {p0, v4, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 422
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestLayout()V
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    if-nez v0, :cond_0

    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 233
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    .line 234
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    .line 190
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    shl-int/lit8 p1, p1, 0x18

    .line 191
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->n:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 192
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 203
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->n:I

    .line 204
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->n:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 206
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0

    .line 173
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    .line 174
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    return-void
.end method
