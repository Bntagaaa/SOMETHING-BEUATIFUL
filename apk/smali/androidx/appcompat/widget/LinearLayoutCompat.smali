.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:Z

.field public i:[I

.field public j:[I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    const/4 v1, -0x1

    .line 113
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    const/4 v2, 0x0

    .line 120
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    const v3, 0x800033

    .line 124
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 164
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v6, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 166
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 170
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 175
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 180
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 185
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 187
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 188
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 190
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    .line 192
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    .line 194
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 196
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, p2

    .line 383
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, p2

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v3, v4

    .line 389
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1781
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1764
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1765
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1767
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 1751
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 1774
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 445
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gez v0, :cond_0

    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-le v0, v1, :cond_6

    .line 454
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 458
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-nez v0, :cond_1

    return v2

    .line 464
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 476
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 477
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 485
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 492
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 493
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 450
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 503
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 298
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    return v0
.end method

.method public getGravity()I
    .locals 1
    .annotation build Landroidx/annotation/GravityInt;
    .end annotation

    .line 1730
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1695
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 230
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 553
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 591
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 592
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 593
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 594
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 597
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 303
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 307
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 528
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 320
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 322
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v4, v5

    .line 323
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sub-int/2addr v0, v3

    .line 528
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 337
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    return-void

    .line 541
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 343
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    :goto_2
    if-ge v2, v0, :cond_7

    .line 528
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 347
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 348
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 349
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v4, :cond_5

    .line 352
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 354
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v5, v6

    .line 356
    :goto_3
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 361
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sub-int/2addr v0, v3

    .line 528
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v4, :cond_8

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    .line 368
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    .line 371
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v4, :cond_a

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    goto :goto_4

    .line 375
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 378
    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1786
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1787
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1792
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1793
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 1430
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v5, 0x50

    const/4 v6, 0x2

    const/16 v7, 0x10

    const v8, 0x800007

    const/4 v9, 0x1

    if-ne v1, v9, :cond_8

    .line 1450
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v10, p4, p2

    .line 1457
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v11, v10, v11

    sub-int/2addr v10, v1

    .line 1460
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 1464
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v14, v13, 0x70

    and-int/2addr v8, v13

    if-eq v14, v7, :cond_1

    if-eq v14, v5, :cond_0

    .line 1480
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_0

    .line 1470
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int v5, v5, p5

    sub-int v5, v5, p3

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 1475
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int v7, p5, p3

    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v7, v13

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_16

    .line 528
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    const/16 p1, 0x2

    goto :goto_4

    .line 1488
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v3, :cond_2

    .line 1489
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1490
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1493
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/16 p1, 0x2

    .line 1495
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_4

    move v6, v8

    .line 1499
    :cond_4
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1500
    invoke-static {v6, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v9, :cond_6

    if-eq v3, v2, :cond_5

    .line 1514
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    goto :goto_3

    :cond_5
    sub-int v3, v11, v13

    .line 1509
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v3, v6

    goto :goto_3

    :cond_6
    sub-int v3, v10, v13

    .line 1504
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 1518
    :goto_3
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1519
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v5, v6

    .line 1522
    :cond_7
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    add-int/2addr v13, v3

    add-int v6, v5, v14

    .line 1669
    invoke-virtual {v7, v3, v5, v13, v6}, Landroid/view/View;->layout(IIII)V

    .line 1525
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v3

    add-int/2addr v14, v5

    move v5, v14

    :goto_4
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x2

    goto :goto_1

    :cond_8
    const/16 p1, 0x2

    .line 1545
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 1546
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v6, p5, p3

    .line 1553
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int v10, v6, v10

    sub-int/2addr v6, v3

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v6, v11

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1560
    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v8, v12

    and-int/lit8 v12, v12, 0x70

    .line 1563
    iget-boolean v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 1565
    iget-object v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 1566
    iget-object v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 1568
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 1569
    invoke-static {v8, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    if-eq v4, v9, :cond_a

    if-eq v4, v2, :cond_9

    .line 1582
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto :goto_5

    .line 1572
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v4

    goto :goto_5

    .line 1577
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v4, p4, p2

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    :goto_5
    if-eqz v1, :cond_b

    add-int/lit8 v1, v11, -0x1

    const/4 v8, -0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v8, 0x1

    :goto_6
    const/4 v9, 0x0

    const/16 v17, 0x1

    :goto_7
    if-ge v9, v11, :cond_16

    mul-int v18, v8, v9

    add-int v5, v18, v1

    .line 528
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_c

    move/from16 p3, v1

    :goto_8
    move/from16 v19, v3

    goto/16 :goto_d

    .line 1600
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 p3, v1

    const/16 v1, 0x8

    if-eq v4, v1, :cond_15

    .line 1601
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1602
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1606
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move/from16 p5, v2

    if-eqz v13, :cond_d

    .line 1608
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 1609
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_9

    :cond_d
    move/from16 v19, v3

    :cond_e
    const/4 v3, -0x1

    .line 1612
    :goto_9
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_f

    move v2, v12

    :cond_f
    and-int/lit8 v2, v2, 0x70

    move/from16 v20, v4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_12

    const/16 v4, 0x30

    if-eq v2, v4, :cond_11

    const/16 v4, 0x50

    if-eq v2, v4, :cond_10

    move/from16 v2, v19

    const/4 v4, -0x1

    goto :goto_b

    :cond_10
    sub-int v2, v10, v16

    .line 1642
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    .line 1644
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v3

    .line 1645
    aget v3, v15, p1

    sub-int v3, v3, v21

    :goto_a
    sub-int/2addr v2, v3

    goto :goto_b

    :cond_11
    const/4 v4, -0x1

    .line 1619
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v2, v19, v2

    if-eq v3, v4, :cond_13

    .line 1621
    aget v21, v14, v17

    sub-int v21, v21, v3

    add-int v2, v21, v2

    goto :goto_b

    :cond_12
    const/4 v4, -0x1

    sub-int v2, v6, v16

    .line 1637
    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v19

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_a

    .line 1653
    :cond_13
    :goto_b
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1654
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int v3, p5, v3

    goto :goto_c

    :cond_14
    move/from16 v3, p5

    .line 1657
    :goto_c
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int v5, v3, v20

    add-int v4, v2, v16

    .line 1669
    invoke-virtual {v7, v3, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 1660
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v4, v20, v1

    add-int/2addr v4, v3

    move v2, v4

    goto :goto_d

    :cond_15
    move/from16 p5, v2

    goto/16 :goto_8

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    move/from16 v3, v19

    const/16 v5, 0x50

    const/16 v7, 0x10

    goto/16 :goto_7

    :cond_16
    return-void
.end method

.method public onMeasure(II)V
    .locals 38

    move-object/from16 v0, p0

    .line 574
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v7, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v1, v14, :cond_29

    .line 619
    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 629
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 630
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 635
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 636
    iget-boolean v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const v17, 0xffffff

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    :goto_0
    if-ge v5, v15, :cond_11

    move/from16 v25, v1

    .line 528
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 645
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_1
    move/from16 v29, v2

    move v7, v3

    move/from16 v28, v4

    move v11, v5

    move/from16 v10, v25

    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_c

    .line 649
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v9, :cond_1

    goto :goto_1

    .line 654
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 655
    iget v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v10, v9

    iput v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 658
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 660
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v16, v16, v10

    if-ne v2, v8, :cond_3

    .line 662
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v8, :cond_3

    cmpl-float v8, v10, v18

    if-lez v8, :cond_3

    .line 666
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 667
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v8

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v30, v1

    move/from16 v29, v2

    move v7, v3

    move/from16 v28, v4

    move v11, v5

    move/from16 v10, v25

    const/16 v19, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    goto :goto_5

    .line 672
    :cond_3
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v8, :cond_4

    cmpl-float v8, v10, v18

    if-lez v8, :cond_4

    .line 678
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/high16 v8, -0x80000000

    :goto_2
    cmpl-float v10, v16, v18

    if-nez v10, :cond_5

    .line 687
    iget v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v11, v10

    move v10, v5

    move v5, v11

    :goto_3
    move v11, v3

    goto :goto_4

    :cond_5
    move v10, v5

    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    const/4 v3, 0x0

    move/from16 v29, v2

    move/from16 v28, v4

    move v7, v11

    move/from16 v2, p1

    move/from16 v4, p2

    move v11, v10

    move/from16 v10, v25

    .line 1401
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/high16 v3, -0x80000000

    if-eq v8, v3, :cond_6

    .line 690
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 693
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 694
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v8, v5, v3

    move-object/from16 v30, v1

    .line 695
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v1

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-eqz v28, :cond_7

    .line 699
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_7
    :goto_5
    if-ltz v7, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v7, v5, :cond_8

    .line 708
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    :cond_8
    if-ge v11, v7, :cond_9

    .line 714
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v18

    if-gtz v1, :cond_a

    :cond_9
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_6

    .line 715
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_6
    if-eq v10, v1, :cond_b

    .line 722
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    const/16 v23, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    .line 731
    :goto_7
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 732
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 733
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 735
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    move/from16 v30, v1

    move/from16 v1, v22

    .line 734
    invoke-static {v1, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    if-eqz v24, :cond_c

    .line 737
    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v22, v1

    const/4 v1, -0x1

    if-ne v13, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    move/from16 v22, v1

    :cond_d
    const/4 v1, 0x0

    .line 738
    :goto_8
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v18

    if-lez v9, :cond_f

    if-eqz v30, :cond_e

    goto :goto_9

    :cond_e
    move v3, v5

    .line 743
    :goto_9
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_b

    :cond_f
    if-eqz v30, :cond_10

    goto :goto_a

    :cond_10
    move v3, v5

    .line 746
    :goto_a
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_b
    move/from16 v24, v1

    move v13, v8

    :goto_c
    add-int/lit8 v5, v11, 0x1

    move v3, v7

    move v1, v10

    move/from16 v4, v28

    move/from16 v2, v29

    const/4 v7, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, 0x8

    goto/16 :goto_0

    :cond_11
    move v10, v1

    move/from16 v29, v2

    move/from16 v28, v4

    move/from16 v1, v22

    move/from16 v2, p1

    move/from16 v4, p2

    .line 753
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v3, :cond_12

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 754
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :cond_12
    move/from16 v5, v29

    if-eqz v28, :cond_16

    const/high16 v3, -0x80000000

    if-eq v5, v3, :cond_13

    if-nez v5, :cond_16

    :cond_13
    const/4 v3, 0x0

    .line 759
    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v15, :cond_16

    .line 528
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_14

    .line 765
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_e

    .line 769
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_15

    goto :goto_e

    .line 775
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 777
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v9, v8, v14

    .line 778
    iget v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 784
    :cond_16
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v3

    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v7, 0x0

    .line 792
    invoke-static {v3, v4, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    and-int v7, v3, v17

    .line 798
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v7, v8

    if-nez v19, :cond_1a

    if-eqz v7, :cond_17

    cmpl-float v8, v16, v18

    if-lez v8, :cond_17

    goto :goto_11

    .line 871
    :cond_17
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v28, :cond_26

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_26

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v15, :cond_26

    .line 528
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 881
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_18

    goto :goto_10

    .line 886
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 888
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v8, v8, v18

    if-lez v8, :cond_19

    .line 891
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 893
    invoke-static {v14, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 890
    invoke-virtual {v7, v8, v11}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 800
    :cond_1a
    :goto_11
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v9, v8, v18

    if-lez v9, :cond_1b

    move/from16 v16, v8

    :cond_1b
    const/4 v8, 0x0

    .line 802
    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v8, v1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v15, :cond_25

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 807
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1c

    move/from16 v17, v1

    goto/16 :goto_19

    .line 811
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 813
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v12, v18

    if-lez v14, :cond_21

    int-to-float v14, v7

    mul-float v14, v14, v12

    div-float v14, v14, v16

    float-to-int v14, v14

    sub-float v16, v16, v12

    sub-int/2addr v7, v14

    .line 821
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    add-int v17, v17, v12

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v17, v12

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v12, v17, v12

    move/from16 v17, v1

    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 820
    invoke-static {v2, v12, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 826
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v12, :cond_1f

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v5, v12, :cond_1d

    goto :goto_14

    :cond_1d
    if-lez v14, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v14, 0x0

    .line 840
    :goto_13
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 839
    invoke-virtual {v9, v1, v14}, Landroid/view/View;->measure(II)V

    goto :goto_15

    :cond_1f
    const/high16 v12, 0x40000000    # 2.0f

    .line 829
    :goto_14
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v14, v19, v14

    if-gez v14, :cond_20

    const/4 v14, 0x0

    .line 835
    :cond_20
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 834
    invoke-virtual {v9, v1, v14}, Landroid/view/View;->measure(II)V

    .line 846
    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    .line 845
    invoke-static {v8, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_16

    :cond_21
    move/from16 v17, v1

    .line 850
    :goto_16
    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v12

    .line 851
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v1

    .line 852
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v10, v14, :cond_22

    .line 854
    iget v14, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v19, v1

    const/4 v1, -0x1

    if-ne v14, v1, :cond_23

    move/from16 v12, v19

    goto :goto_17

    :cond_22
    const/4 v1, -0x1

    .line 857
    :cond_23
    :goto_17
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v24, :cond_24

    .line 860
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v12, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_18

    :cond_24
    const/4 v1, 0x0

    .line 862
    :goto_18
    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 863
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v12

    iget v14, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v14

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v24, v1

    :goto_19
    add-int/lit8 v1, v17, 0x1

    goto/16 :goto_12

    .line 868
    :cond_25
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v1

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v1, v8

    :cond_26
    if-nez v24, :cond_27

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v10, v14, :cond_27

    goto :goto_1a

    :cond_27
    move v6, v13

    .line 904
    :goto_1a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    .line 907
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 909
    invoke-static {v5, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v23, :cond_63

    .line 919
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v15, :cond_63

    .line 528
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 923
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v9, 0x8

    if-eq v3, v9, :cond_28

    .line 924
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 926
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_28

    .line 929
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 930
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 933
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 934
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_28
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p2

    goto :goto_1b

    :cond_29
    move/from16 v2, p1

    const/4 v3, 0x0

    const v17, 0xffffff

    const/16 v18, 0x0

    const/16 v20, 0x1

    .line 952
    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 962
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 963
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 968
    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    const/4 v9, 0x4

    if-eqz v1, :cond_2a

    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    if-nez v1, :cond_2b

    .line 969
    :cond_2a
    new-array v1, v9, [I

    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 970
    new-array v1, v9, [I

    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 973
    :cond_2b
    iget-object v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 974
    iget-object v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    const/4 v12, 0x3

    const/16 v26, -0x1

    .line 976
    aput v26, v10, v12

    const/4 v13, 0x2

    aput v26, v10, v13

    aput v26, v10, v20

    const/16 v21, 0x0

    aput v26, v10, v21

    .line 977
    aput v26, v11, v12

    aput v26, v11, v13

    aput v26, v11, v20

    aput v26, v11, v21

    .line 979
    iget-boolean v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 980
    iget-boolean v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v7, v1, :cond_2c

    const/16 v16, 0x1

    goto :goto_1c

    :cond_2c
    const/16 v16, 0x0

    :goto_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x3

    const/16 v28, 0x0

    const/16 v29, 0x1

    :goto_1d
    if-ge v1, v6, :cond_40

    const/16 v30, 0x2

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_2d

    .line 991
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v33, v1

    move v1, v4

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v14

    move/from16 v35, v15

    move/from16 v4, p2

    goto/16 :goto_2b

    .line 995
    :cond_2d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v31, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2e

    move/from16 v2, p1

    move/from16 v33, v1

    move v1, v4

    move-object/from16 v32, v11

    move/from16 v34, v14

    move/from16 v35, v15

    move/from16 v3, v31

    move/from16 v4, p2

    move-object/from16 v31, v10

    goto/16 :goto_2b

    .line 1000
    :cond_2e
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1001
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1005
    :cond_2f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1007
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v28, v28, v3

    move/from16 v32, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v7, v1, :cond_32

    .line 1009
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_32

    cmpl-float v1, v3, v18

    if-lez v1, :cond_32

    if-eqz v16, :cond_30

    .line 1014
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v33, v1

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    add-int v3, v3, v33

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_1e

    .line 1016
    :cond_30
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1017
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    move/from16 v33, v3

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v33, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_1e
    if-eqz v14, :cond_31

    const/4 v3, 0x0

    .line 1027
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1028
    invoke-virtual {v13, v1, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v36, v13

    move/from16 v34, v14

    move/from16 v35, v15

    move/from16 v13, v31

    move/from16 v33, v32

    move-object v14, v2

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v2, p1

    move v10, v4

    move v11, v5

    move/from16 v4, p2

    goto/16 :goto_23

    :cond_31
    move-object/from16 v36, v13

    move/from16 v34, v14

    move/from16 v35, v15

    move/from16 v13, v31

    move/from16 v33, v32

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v22, 0x1

    move-object v14, v2

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v2, p1

    move v10, v4

    move v11, v5

    move/from16 v4, p2

    goto/16 :goto_24

    .line 1035
    :cond_32
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_33

    cmpl-float v1, v3, v18

    if-lez v1, :cond_33

    const/4 v1, -0x2

    .line 1041
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    goto :goto_1f

    :cond_33
    const/high16 v1, -0x80000000

    :goto_1f
    cmpl-float v3, v28, v18

    if-nez v3, :cond_34

    .line 1049
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_20
    move/from16 v33, v5

    goto :goto_21

    :cond_34
    const/4 v3, 0x0

    goto :goto_20

    :goto_21
    const/4 v5, 0x0

    move/from16 v34, v32

    move-object/from16 v32, v11

    move/from16 v11, v33

    move/from16 v33, v34

    move/from16 v34, v14

    move/from16 v35, v15

    move v15, v1

    move-object v14, v2

    move-object v1, v13

    move/from16 v13, v31

    move/from16 v2, p1

    move-object/from16 v31, v10

    move v10, v4

    move/from16 v4, p2

    .line 1401
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/high16 v3, -0x80000000

    if-eq v15, v3, :cond_35

    .line 1053
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1056
    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eqz v16, :cond_36

    .line 1058
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v3

    move-object/from16 v36, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v1

    add-int/2addr v15, v5

    .line 1059
    iput v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_22

    :cond_36
    move-object/from16 v36, v1

    .line 1061
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v5, v1, v3

    .line 1062
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v15

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v15

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_22
    if-eqz v35, :cond_37

    .line 1067
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_37
    :goto_23
    const/high16 v1, 0x40000000    # 2.0f

    :goto_24
    if-eq v8, v1, :cond_38

    .line 1072
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_38

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto :goto_25

    :cond_38
    const/4 v1, 0x0

    .line 1080
    :goto_25
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    .line 1081
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 1082
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v12, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    if-eqz v34, :cond_3a

    .line 1085
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    move-result v15

    move/from16 v36, v1

    const/4 v1, -0x1

    if-eq v15, v1, :cond_3b

    .line 1089
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_39

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :cond_39
    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v1, v1, 0x4

    const/16 v25, -0x2

    and-int/lit8 v1, v1, -0x2

    shr-int/lit8 v1, v1, 0x1

    move/from16 v37, v1

    .line 1094
    aget v1, v31, v37

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v31, v37

    .line 1095
    aget v1, v32, v37

    sub-int v15, v5, v15

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v32, v37

    goto :goto_26

    :cond_3a
    move/from16 v36, v1

    .line 1099
    :cond_3b
    :goto_26
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v29, :cond_3c

    .line 1101
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3c

    const/4 v13, 0x1

    goto :goto_27

    :cond_3c
    const/4 v13, 0x0

    .line 1102
    :goto_27
    iget v14, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v18

    if-lez v14, :cond_3e

    if-eqz v36, :cond_3d

    goto :goto_28

    :cond_3d
    move v3, v5

    .line 1107
    :goto_28
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v10

    goto :goto_2a

    :cond_3e
    if-eqz v36, :cond_3f

    goto :goto_29

    :cond_3f
    move v3, v5

    .line 1110
    :goto_29
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v11

    :goto_2a
    move/from16 v29, v3

    move v3, v1

    move/from16 v1, v29

    move/from16 v29, v13

    :goto_2b
    add-int/lit8 v10, v33, 0x1

    move v4, v1

    move v1, v10

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move/from16 v14, v34

    move/from16 v15, v35

    const/4 v13, 0x2

    goto/16 :goto_1d

    :cond_40
    move v13, v3

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v14

    move/from16 v35, v15

    const/16 v30, 0x2

    move v10, v4

    move v11, v5

    move/from16 v4, p2

    .line 1117
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v1, :cond_41

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1118
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1123
    :cond_41
    aget v1, v31, v20

    const/4 v3, -0x1

    if-ne v1, v3, :cond_43

    const/16 v21, 0x0

    aget v5, v31, v21

    if-ne v5, v3, :cond_43

    aget v5, v31, v30

    if-ne v5, v3, :cond_43

    aget v5, v31, v24

    if-eq v5, v3, :cond_42

    goto :goto_2c

    :cond_42
    move v3, v13

    goto :goto_2d

    .line 1127
    :cond_43
    :goto_2c
    aget v3, v31, v24

    const/16 v21, 0x0

    aget v5, v31, v21

    aget v14, v31, v30

    .line 1129
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1128
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1127
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1130
    aget v3, v32, v24

    aget v5, v32, v21

    aget v14, v32, v20

    aget v15, v32, v30

    .line 1132
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1131
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1130
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    .line 1133
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2d
    if-eqz v35, :cond_48

    const/high16 v1, -0x80000000

    if-eq v7, v1, :cond_44

    if-nez v7, :cond_48

    :cond_44
    const/4 v1, 0x0

    .line 1138
    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v6, :cond_48

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_45

    .line 1144
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_2f

    .line 1148
    :cond_45
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_46

    goto :goto_2f

    .line 1154
    :cond_46
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v16, :cond_47

    .line 1156
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v9

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v5

    add-int/2addr v14, v13

    .line 1157
    iput v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_2f

    .line 1159
    :cond_47
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v14, v13, v9

    .line 1160
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1167
    :cond_48
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v1

    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1172
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v5, 0x0

    .line 1175
    invoke-static {v1, v2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    and-int v5, v1, v17

    .line 1181
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v5, v13

    if-nez v22, :cond_4d

    if-eqz v5, :cond_49

    cmpl-float v14, v28, v18

    if-lez v14, :cond_49

    goto :goto_32

    .line 1293
    :cond_49
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v35, :cond_4c

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v7, v14, :cond_4c

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_4c

    .line 528
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4b

    .line 1301
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_4a

    goto :goto_31

    .line 1306
    :cond_4a
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1308
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v11, v11, v18

    if-lez v11, :cond_4b

    const/high16 v14, 0x40000000    # 2.0f

    .line 1311
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1312
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1310
    invoke-virtual {v10, v11, v15}, Landroid/view/View;->measure(II)V

    :cond_4b
    :goto_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_4c
    move/from16 v22, v1

    const/high16 v17, -0x1000000

    const/16 v21, 0x0

    goto/16 :goto_41

    .line 1183
    :cond_4d
    :goto_32
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v9, v3, v18

    if-lez v9, :cond_4e

    move/from16 v28, v3

    :cond_4e
    const/16 v26, -0x1

    .line 1185
    aput v26, v31, v24

    aput v26, v31, v30

    aput v26, v31, v20

    const/4 v3, 0x0

    aput v26, v31, v3

    .line 1186
    aput v26, v32, v24

    aput v26, v32, v30

    aput v26, v32, v20

    aput v26, v32, v3

    .line 1189
    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v3, -0x1

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v6, :cond_5d

    .line 528
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4f

    .line 1194
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_50

    :cond_4f
    move/from16 v22, v1

    const/high16 v17, -0x1000000

    const/16 v25, -0x2

    goto/16 :goto_3e

    .line 1199
    :cond_50
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1201
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v17, v15, v18

    if-lez v17, :cond_55

    const/high16 v17, -0x1000000

    int-to-float v13, v5

    mul-float v13, v13, v15

    div-float v13, v13, v28

    float-to-int v13, v13

    sub-float v28, v28, v15

    sub-int/2addr v5, v13

    .line 1210
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    add-int v22, v22, v15

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v22, v15

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v15, v22, v15

    move/from16 v22, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1208
    invoke-static {v4, v15, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1215
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v15, :cond_53

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v7, v15, :cond_51

    goto :goto_35

    :cond_51
    if-lez v13, :cond_52

    goto :goto_34

    :cond_52
    const/4 v13, 0x0

    .line 1228
    :goto_34
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v13, v1}, Landroid/view/View;->measure(II)V

    goto :goto_36

    :cond_53
    const/high16 v15, 0x40000000    # 2.0f

    .line 1218
    :goto_35
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v13, v27, v13

    if-gez v13, :cond_54

    const/4 v13, 0x0

    .line 1224
    :cond_54
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1223
    invoke-virtual {v11, v13, v1}, Landroid/view/View;->measure(II)V

    .line 1235
    :goto_36
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int v1, v1, v17

    .line 1234
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_37

    :cond_55
    move/from16 v22, v1

    const/high16 v17, -0x1000000

    :goto_37
    if-eqz v16, :cond_56

    .line 1239
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v15

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    add-int/2addr v13, v1

    .line 1240
    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_38
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_39

    .line 1242
    :cond_56
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1243
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v1

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v15

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_38

    :goto_39
    if-eq v8, v1, :cond_57

    .line 1247
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_57

    const/4 v1, 0x1

    goto :goto_3a

    :cond_57
    const/4 v1, 0x0

    .line 1250
    :goto_3a
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    .line 1251
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    .line 1252
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v1, :cond_58

    goto :goto_3b

    :cond_58
    move v13, v15

    .line 1253
    :goto_3b
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v29, :cond_59

    .line 1256
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v10, v13, :cond_5a

    const/4 v10, 0x1

    goto :goto_3c

    :cond_59
    const/4 v13, -0x1

    :cond_5a
    const/4 v10, 0x0

    :goto_3c
    if-eqz v34, :cond_5c

    .line 1259
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v11

    if-eq v11, v13, :cond_5c

    .line 1262
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v13, :cond_5b

    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :cond_5b
    and-int/lit8 v13, v13, 0x70

    shr-int/lit8 v13, v13, 0x4

    const/16 v25, -0x2

    and-int/lit8 v13, v13, -0x2

    shr-int/lit8 v13, v13, 0x1

    .line 1267
    aget v14, v31, v13

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v31, v13

    .line 1268
    aget v14, v32, v13

    sub-int/2addr v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v32, v13

    goto :goto_3d

    :cond_5c
    const/16 v25, -0x2

    :goto_3d
    move/from16 v29, v10

    move v10, v1

    :goto_3e
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v22

    goto/16 :goto_33

    :cond_5d
    move/from16 v22, v1

    const/high16 v17, -0x1000000

    .line 1275
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v1

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1280
    aget v1, v31, v20

    const/4 v15, -0x1

    if-ne v1, v15, :cond_5f

    const/16 v21, 0x0

    aget v5, v31, v21

    if-ne v5, v15, :cond_5f

    aget v5, v31, v30

    if-ne v5, v15, :cond_5f

    aget v5, v31, v24

    if-eq v5, v15, :cond_5e

    goto :goto_3f

    :cond_5e
    const/16 v21, 0x0

    goto :goto_40

    .line 1284
    :cond_5f
    :goto_3f
    aget v5, v31, v24

    const/16 v21, 0x0

    aget v7, v31, v21

    aget v9, v31, v30

    .line 1286
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1285
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1284
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1287
    aget v5, v32, v24

    aget v7, v32, v21

    aget v9, v32, v20

    aget v11, v32, v30

    .line 1289
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1288
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1287
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v1

    .line 1290
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    :goto_40
    move v5, v10

    :goto_41
    if-nez v29, :cond_60

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v8, v14, :cond_60

    move v3, v5

    .line 1323
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    .line 1326
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    and-int v3, v12, v17

    or-int v3, v22, v3

    shl-int/lit8 v5, v12, 0x10

    .line 1329
    invoke-static {v1, v4, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1328
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v19, :cond_63

    .line 1341
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v13, 0x0

    :goto_42
    if-ge v13, v6, :cond_63

    .line 528
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1345
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v9, 0x8

    if-eq v3, v9, :cond_61

    .line 1346
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1348
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v3, v15, :cond_62

    .line 1351
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1352
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1355
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1356
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_43

    :cond_61
    const/4 v15, -0x1

    :cond_62
    :goto_43
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    goto :goto_42

    :cond_63
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 515
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return-void

    .line 512
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 254
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 257
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    goto :goto_0

    .line 259
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 260
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 262
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 276
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/GravityInt;
        .end annotation
    .end param

    .line 1707
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1716
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1717
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1735
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1736
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1737
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1678
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-eq v0, p1, :cond_0

    .line 1679
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    .line 1680
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 207
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    if-eq p1, v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 210
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1743
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1744
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1745
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 569
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
