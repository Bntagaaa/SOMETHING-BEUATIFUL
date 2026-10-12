.class Landroidx/appcompat/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/q$e;,
        Landroidx/appcompat/widget/q$b;,
        Landroidx/appcompat/widget/q$a;,
        Landroidx/appcompat/widget/q$c;,
        Landroidx/appcompat/widget/q$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/TintInfo;

.field public c:Landroidx/appcompat/widget/TintInfo;

.field public d:Landroidx/appcompat/widget/TintInfo;

.field public e:Landroidx/appcompat/widget/TintInfo;

.field public f:Landroidx/appcompat/widget/TintInfo;

.field public g:Landroidx/appcompat/widget/TintInfo;

.field public h:Landroidx/appcompat/widget/TintInfo;

.field public final i:Landroidx/appcompat/widget/r;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Landroidx/appcompat/widget/q;->j:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Landroidx/appcompat/widget/q;->k:I

    .line 81
    iput-object p1, p0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    .line 82
    new-instance v0, Landroidx/appcompat/widget/r;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/r;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->i:Landroidx/appcompat/widget/r;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 0
    monitor-enter p1

    .line 498
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->a:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p0, :cond_0

    .line 553
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    const/4 p2, 0x1

    .line 554
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 555
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 498
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 526
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/q;->e:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    aget-object v4, v0, v2

    iget-object v5, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v4, 0x1

    .line 530
    aget-object v4, v0, v4

    iget-object v5, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 531
    aget-object v4, v0, v1

    iget-object v5, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v4, 0x3

    .line 532
    aget-object v0, v0, v4

    iget-object v4, p0, Landroidx/appcompat/widget/q;->e:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 535
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->f:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/q;->g:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 536
    :cond_3
    :goto_0
    invoke-static {v3}, Landroidx/appcompat/widget/q$a;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/q;->f:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 538
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/q;->g:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/q;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    .line 87
    iget-object v1, v0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 88
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v9

    .line 91
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v10, 0x0

    invoke-static {v8, v4, v3, v6, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    .line 93
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    move-object v12, v1

    .line 97
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v13, -0x1

    invoke-virtual {v11, v1, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 99
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v11, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 100
    invoke-static {v8, v9, v2}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/TintInfo;

    .line 103
    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v11, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 104
    invoke-static {v8, v9, v2}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/TintInfo;

    .line 107
    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v11, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 108
    invoke-static {v8, v9, v2}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/TintInfo;

    .line 111
    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {v11, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 112
    invoke-static {v8, v9, v2}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/q;->e:Landroidx/appcompat/widget/TintInfo;

    .line 116
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 119
    invoke-virtual {v11, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 118
    invoke-static {v8, v9, v3}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/q;->f:Landroidx/appcompat/widget/TintInfo;

    .line 121
    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    invoke-virtual {v11, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 122
    invoke-static {v8, v9, v3}, Landroidx/appcompat/widget/q;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/q;->g:Landroidx/appcompat/widget/TintInfo;

    .line 127
    :cond_5
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 133
    invoke-virtual {v12}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    const/16 v5, 0x1a

    const/16 v7, 0x17

    if-eq v1, v13, :cond_d

    .line 144
    sget-object v15, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v8, v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    if-nez v3, :cond_6

    .line 145
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 147
    invoke-virtual {v1, v15, v10}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    const/16 v16, 0x1

    goto :goto_0

    :cond_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 150
    :goto_0
    invoke-virtual {v0, v8, v1}, Landroidx/appcompat/widget/q;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    if-ge v2, v7, :cond_a

    .line 154
    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 155
    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    .line 157
    :goto_1
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 158
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    .line 161
    :goto_2
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 162
    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 166
    :goto_3
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 167
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    if-lt v2, v5, :cond_c

    .line 169
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 170
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 171
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 173
    :goto_5
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 177
    :goto_6
    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v8, v4, v1, v6, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    if-nez v3, :cond_e

    .line 179
    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_e

    move/from16 v22, v3

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v10, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    const/16 v16, 0x1

    :goto_7
    const/16 v3, 0x17

    goto :goto_8

    :cond_e
    move/from16 v22, v3

    goto :goto_7

    :goto_8
    if-ge v2, v3, :cond_11

    .line 186
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 187
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 189
    :cond_f
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 190
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 193
    :cond_10
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 194
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 198
    :cond_11
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 199
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_12
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_13

    .line 202
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 203
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 204
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_13
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_14

    .line 207
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 208
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, -0x1

    .line 209
    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 210
    invoke-virtual {v12, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    :cond_14
    invoke-virtual {v0, v8, v1}, Landroidx/appcompat/widget/q;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 215
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-eqz v14, :cond_15

    .line 218
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v11, :cond_16

    .line 221
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v13, :cond_17

    .line 224
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v22, :cond_18

    if-eqz v16, :cond_18

    .line 518
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 229
    :cond_18
    iget-object v1, v0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1a

    .line 230
    iget v3, v0, Landroidx/appcompat/widget/q;->k:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_19

    .line 231
    iget v3, v0, Landroidx/appcompat/widget/q;->j:I

    invoke-virtual {v12, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_9

    .line 233
    :cond_19
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_9
    if-eqz v5, :cond_1b

    .line 237
    invoke-static {v12, v5}, Landroidx/appcompat/widget/q$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_1b
    if-eqz v7, :cond_1c

    const/16 v1, 0x18

    if-lt v2, v1, :cond_1d

    .line 241
    invoke-static {v7}, Landroidx/appcompat/widget/q$c;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v12, v1}, Landroidx/appcompat/widget/q$c;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    :cond_1c
    const/4 v10, 0x0

    goto :goto_a

    .line 244
    :cond_1d
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aget-object v1, v1, v10

    .line 245
    invoke-static {v1}, Landroidx/appcompat/widget/q$b;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v12, v1}, Landroidx/appcompat/widget/q$a;->c(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 171
    :goto_a
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 171
    iget-object v11, v0, Landroidx/appcompat/widget/q;->i:Landroidx/appcompat/widget/r;

    iget-object v13, v11, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    .line 171
    invoke-virtual {v13, v4, v3, v6, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 173
    iget-object v1, v11, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 176
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 177
    invoke-virtual {v5, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v11, Landroidx/appcompat/widget/r;->a:I

    .line 180
    :cond_1e
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_1f

    .line 181
    invoke-virtual {v5, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_b

    :cond_1f
    const/high16 v1, -0x40800000    # -1.0f

    .line 185
    :goto_b
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 186
    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_c

    :cond_20
    const/high16 v2, -0x40800000    # -1.0f

    .line 190
    :goto_c
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 191
    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_d

    :cond_21
    const/high16 v6, -0x40800000    # -1.0f

    .line 195
    :goto_d
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v10, 0x0

    .line 196
    invoke-virtual {v5, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-lez v7, :cond_24

    .line 199
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 200
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 486
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    .line 487
    new-array v14, v10, [I

    if-lez v10, :cond_23

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v10, :cond_22

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    .line 491
    invoke-virtual {v7, v15, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_e

    :cond_22
    const/high16 p2, -0x40800000    # -1.0f

    .line 493
    invoke-static {v14}, Landroidx/appcompat/widget/r;->b([I)[I

    move-result-object v3

    iput-object v3, v11, Landroidx/appcompat/widget/r;->f:[I

    .line 494
    invoke-virtual {v11}, Landroidx/appcompat/widget/r;->i()Z

    goto :goto_f

    :cond_23
    const/high16 p2, -0x40800000    # -1.0f

    .line 202
    :goto_f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_10

    :cond_24
    const/high16 p2, -0x40800000    # -1.0f

    .line 205
    :goto_10
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-virtual {v11}, Landroidx/appcompat/widget/r;->j()Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_29

    .line 208
    iget v3, v11, Landroidx/appcompat/widget/r;->a:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2a

    .line 212
    iget-boolean v3, v11, Landroidx/appcompat/widget/r;->g:Z

    if-nez v3, :cond_28

    .line 214
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    cmpl-float v7, v2, p2

    if-nez v7, :cond_25

    const/high16 v2, 0x41400000    # 12.0f

    .line 217
    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_25
    cmpl-float v7, v6, p2

    if-nez v7, :cond_26

    const/high16 v6, 0x42e00000    # 112.0f

    .line 224
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    :cond_26
    cmpl-float v3, v1, p2

    if-nez v3, :cond_27

    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    :cond_27
    invoke-virtual {v11, v2, v6, v1}, Landroidx/appcompat/widget/r;->k(FFF)V

    .line 240
    :cond_28
    invoke-virtual {v11}, Landroidx/appcompat/widget/r;->h()Z

    goto :goto_11

    :cond_29
    const/4 v10, 0x0

    .line 243
    iput v10, v11, Landroidx/appcompat/widget/r;->a:I

    .line 251
    :cond_2a
    :goto_11
    sget-boolean v1, Landroidx/appcompat/widget/ViewUtils;->b:Z

    if-eqz v1, :cond_2c

    .line 423
    iget v1, v11, Landroidx/appcompat/widget/r;->a:I

    if-eqz v1, :cond_2c

    .line 482
    iget-object v1, v11, Landroidx/appcompat/widget/r;->f:[I

    .line 257
    array-length v2, v1

    if-lez v2, :cond_2c

    .line 258
    invoke-static {v12}, Landroidx/appcompat/widget/q$d;->a(Landroid/widget/TextView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_2b

    .line 453
    iget v1, v11, Landroidx/appcompat/widget/r;->d:F

    .line 453
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 469
    iget v2, v11, Landroidx/appcompat/widget/r;->e:F

    .line 469
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 437
    iget v3, v11, Landroidx/appcompat/widget/r;->c:F

    .line 437
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v10, 0x0

    .line 262
    invoke-static {v12, v1, v2, v3, v10}, Landroidx/appcompat/widget/q$d;->b(Landroid/widget/TextView;IIII)V

    goto :goto_12

    :cond_2b
    const/4 v10, 0x0

    .line 268
    invoke-static {v12, v1, v10}, Landroidx/appcompat/widget/q$d;->c(Landroid/widget/TextView;[II)V

    .line 276
    :cond_2c
    :goto_12
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v8, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 281
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    const/4 v10, -0x1

    invoke-virtual {v1, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v10, :cond_2d

    .line 284
    invoke-virtual {v9, v8, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_13

    :cond_2d
    const/4 v2, 0x0

    .line 286
    :goto_13
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v10, :cond_2e

    .line 289
    invoke-virtual {v9, v8, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_14

    :cond_2e
    const/4 v3, 0x0

    .line 291
    :goto_14
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v1, v4, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v10, :cond_2f

    .line 294
    invoke-virtual {v9, v8, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_15

    :cond_2f
    const/4 v4, 0x0

    .line 296
    :goto_15
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v1, v6, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    if-eq v6, v10, :cond_30

    .line 299
    invoke-virtual {v9, v8, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_16

    :cond_30
    const/4 v6, 0x0

    .line 301
    :goto_16
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v1, v7, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    if-eq v7, v10, :cond_31

    .line 304
    invoke-virtual {v9, v8, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_17

    :cond_31
    const/4 v7, 0x0

    .line 306
    :goto_17
    sget v11, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v1, v11, v10}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    if-eq v11, v10, :cond_32

    .line 309
    invoke-virtual {v9, v8, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_18

    :cond_32
    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x3

    if-nez v7, :cond_3d

    if-eqz v8, :cond_33

    goto :goto_20

    :cond_33
    if-nez v2, :cond_34

    if-nez v3, :cond_34

    if-nez v4, :cond_34

    if-eqz v6, :cond_42

    .line 686
    :cond_34
    invoke-static {v12}, Landroidx/appcompat/widget/q$a;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v21, 0x0

    .line 687
    aget-object v8, v7, v21

    if-nez v8, :cond_3a

    aget-object v10, v7, v5

    if-eqz v10, :cond_35

    goto :goto_1d

    .line 695
    :cond_35
    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v2, :cond_36

    goto :goto_19

    .line 697
    :cond_36
    aget-object v2, v7, v21

    :goto_19
    if-eqz v3, :cond_37

    goto :goto_1a

    :cond_37
    const/16 v17, 0x1

    .line 698
    aget-object v3, v7, v17

    :goto_1a
    if-eqz v4, :cond_38

    goto :goto_1b

    .line 699
    :cond_38
    aget-object v4, v7, v5

    :goto_1b
    if-eqz v6, :cond_39

    goto :goto_1c

    .line 700
    :cond_39
    aget-object v6, v7, v9

    .line 696
    :goto_1c
    invoke-virtual {v12, v2, v3, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    :cond_3a
    :goto_1d
    if-eqz v3, :cond_3b

    goto :goto_1e

    :cond_3b
    const/16 v17, 0x1

    .line 689
    aget-object v3, v7, v17

    :goto_1e
    aget-object v2, v7, v5

    if-eqz v6, :cond_3c

    goto :goto_1f

    .line 690
    :cond_3c
    aget-object v6, v7, v9

    .line 688
    :goto_1f
    invoke-static {v12, v8, v3, v2, v6}, Landroidx/appcompat/widget/q$a;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    .line 676
    :cond_3d
    :goto_20
    invoke-static {v12}, Landroidx/appcompat/widget/q$a;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v7, :cond_3e

    goto :goto_21

    :cond_3e
    const/16 v21, 0x0

    .line 678
    aget-object v7, v2, v21

    :goto_21
    if-eqz v3, :cond_3f

    goto :goto_22

    :cond_3f
    const/16 v17, 0x1

    .line 679
    aget-object v3, v2, v17

    :goto_22
    if-eqz v8, :cond_40

    goto :goto_23

    .line 680
    :cond_40
    aget-object v8, v2, v5

    :goto_23
    if-eqz v6, :cond_41

    goto :goto_24

    .line 681
    :cond_41
    aget-object v6, v2, v9

    .line 677
    :goto_24
    invoke-static {v12, v7, v3, v8, v6}, Landroidx/appcompat/widget/q$a;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_42
    :goto_25
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 315
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 317
    invoke-static {v12, v2}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 319
    :cond_43
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    const/4 v10, -0x1

    if-eqz v3, :cond_44

    .line 321
    invoke-virtual {v1, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 320
    invoke-static {v2, v3}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 322
    invoke-static {v12, v2}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 325
    :cond_44
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v1, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 327
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v1, v3, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 329
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v1, v4, v10}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 332
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-eq v2, v10, :cond_45

    .line 334
    invoke-static {v12, v2}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_45
    if-eq v3, v10, :cond_46

    .line 337
    invoke-static {v12, v3}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_46
    if-eq v4, v10, :cond_47

    .line 340
    invoke-static {v12, v4}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_47
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 460
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 462
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 518
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 469
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 472
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 481
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 483
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 486
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 490
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 495
    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    .line 496
    invoke-virtual {p2, v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 497
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 501
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/q;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    const/16 p1, 0x1a

    if-lt v0, p1, :cond_5

    .line 503
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 504
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 505
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 508
    invoke-static {v2, p1}, Landroidx/appcompat/widget/q$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 511
    :cond_5
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 512
    iget-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_6

    .line 513
    iget p2, p0, Landroidx/appcompat/widget/q;->j:I

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    return-void
.end method

.method public final h(IIII)V
    .locals 2

    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/q;->i:Landroidx/appcompat/widget/r;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, v0, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    .line 332
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 334
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 336
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 339
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/r;->k(FFF)V

    .line 342
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->a()V

    :cond_0
    return-void
.end method

.method public final i([II)V
    .locals 6

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/q;->i:Landroidx/appcompat/widget/r;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 376
    new-array v3, v1, [I

    if-nez p2, :cond_0

    .line 379
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    .line 381
    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    .line 382
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 385
    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/widget/r;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/r;->f:[I

    .line 391
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 392
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the preset sizes is valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 396
    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/r;->g:Z

    .line 399
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 400
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->a()V

    :cond_4
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 263
    iget-object v0, p0, Landroidx/appcompat/widget/q;->i:Landroidx/appcompat/widget/r;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 269
    iget-object p1, v0, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    .line 271
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    .line 275
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 280
    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/r;->k(FFF)V

    .line 284
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->a()V

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 642
    iput p1, v0, Landroidx/appcompat/widget/r;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 643
    iput v1, v0, Landroidx/appcompat/widget/r;->d:F

    .line 644
    iput v1, v0, Landroidx/appcompat/widget/r;->e:F

    .line 645
    iput v1, v0, Landroidx/appcompat/widget/r;->c:F

    .line 646
    new-array v1, p1, [I

    iput-object v1, v0, Landroidx/appcompat/widget/r;->f:[I

    .line 647
    iput-boolean p1, v0, Landroidx/appcompat/widget/r;->b:Z

    :cond_2
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 640
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    .line 643
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 644
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 663
    iput-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/TintInfo;

    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/TintInfo;

    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/TintInfo;

    .line 666
    iput-object v0, p0, Landroidx/appcompat/widget/q;->e:Landroidx/appcompat/widget/TintInfo;

    .line 667
    iput-object v0, p0, Landroidx/appcompat/widget/q;->f:Landroidx/appcompat/widget/TintInfo;

    .line 668
    iput-object v0, p0, Landroidx/appcompat/widget/q;->g:Landroidx/appcompat/widget/TintInfo;

    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    .line 657
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/q;->h:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 658
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 663
    iput-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/TintInfo;

    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/TintInfo;

    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/TintInfo;

    .line 666
    iput-object v0, p0, Landroidx/appcompat/widget/q;->e:Landroidx/appcompat/widget/TintInfo;

    .line 667
    iput-object v0, p0, Landroidx/appcompat/widget/q;->f:Landroidx/appcompat/widget/TintInfo;

    .line 668
    iput-object v0, p0, Landroidx/appcompat/widget/q;->g:Landroidx/appcompat/widget/TintInfo;

    return-void
.end method

.method public final m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 10

    .line 345
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/q;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/q;->j:I

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    .line 348
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/q;->k:I

    if-eq v4, v2, :cond_0

    .line 351
    iget v4, p0, Landroidx/appcompat/widget/q;->j:I

    and-int/2addr v4, v1

    iput v4, p0, Landroidx/appcompat/widget/q;->j:I

    .line 355
    :cond_0
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 356
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 420
    iput-boolean v7, p0, Landroidx/appcompat/widget/q;->m:Z

    .line 421
    invoke-virtual {p2, p1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto/16 :goto_6

    .line 432
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    return-void

    .line 428
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    return-void

    .line 424
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    return-void

    :cond_5
    :goto_0
    const/4 v5, 0x0

    .line 357
    iput-object v5, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    .line 358
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move v4, v5

    .line 361
    :cond_6
    iget v5, p0, Landroidx/appcompat/widget/q;->k:I

    .line 362
    iget v8, p0, Landroidx/appcompat/widget/q;->j:I

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_b

    .line 364
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Landroidx/appcompat/widget/q;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 365
    new-instance v9, Landroidx/appcompat/widget/o;

    invoke-direct {v9, p0, v5, v8, p1}, Landroidx/appcompat/widget/o;-><init>(Landroidx/appcompat/widget/q;IILjava/lang/ref/WeakReference;)V

    .line 384
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/q;->j:I

    invoke-virtual {p2, v4, p1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    if-lt v0, v3, :cond_8

    .line 386
    iget v0, p0, Landroidx/appcompat/widget/q;->k:I

    if-eq v0, v2, :cond_8

    .line 389
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/q;->k:I

    iget v5, p0, Landroidx/appcompat/widget/q;->j:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    .line 388
    :goto_1
    invoke-static {p1, v0, v5}, Landroidx/appcompat/widget/q$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    goto :goto_2

    :catch_0
    nop

    goto :goto_4

    .line 392
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    .line 396
    :cond_9
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Landroidx/appcompat/widget/q;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_b
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_e

    .line 403
    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 405
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_d

    iget p2, p0, Landroidx/appcompat/widget/q;->k:I

    if-eq p2, v2, :cond_d

    .line 408
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/q;->k:I

    iget v0, p0, Landroidx/appcompat/widget/q;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    .line 407
    :goto_5
    invoke-static {p1, p2, v6}, Landroidx/appcompat/widget/q$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 411
    :cond_d
    iget p2, p0, Landroidx/appcompat/widget/q;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    :cond_e
    :goto_6
    return-void
.end method
