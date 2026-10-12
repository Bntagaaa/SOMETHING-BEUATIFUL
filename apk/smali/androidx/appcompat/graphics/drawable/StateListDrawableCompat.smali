.class public Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
    }
.end annotation


# instance fields
.field public n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V
    .locals 1

    .line 399
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;-><init>()V

    .line 401
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 402
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 403
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method public static g(Landroid/util/AttributeSet;)[I
    .locals 8

    .line 231
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 232
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 234
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x10100d0

    if-eq v5, v6, :cond_1

    const v6, 0x1010199

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 244
    invoke-interface {p0, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    neg-int v5, v5

    .line 245
    :goto_1
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    .line 347
    invoke-virtual {v0, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    .line 348
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aput-object p1, v0, p2

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 387
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 388
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->f()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V
    .locals 1

    .line 393
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 394
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    :cond_0
    return-void
.end method

.method public f()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
    .locals 3

    .line 315
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setVisible(ZZ)Z

    .line 152
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    .line 155
    iget v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    invoke-static {v0}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 157
    sget v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_variablePadding:I

    iget-boolean v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 159
    sget v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_constantSize:I

    iget-boolean v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 161
    sget v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    iget v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 163
    sget v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    iget v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 165
    sget v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_dither:I

    iget-boolean v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 587
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    if-eqz p2, :cond_1

    .line 880
    iput-object p2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 1206
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v3, :cond_0

    const/16 v3, 0xa0

    .line 884
    :cond_0
    iget v4, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 885
    iput v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-eq v4, v3, :cond_2

    const/4 v3, 0x0

    .line 887
    iput-boolean v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 888
    iput-boolean v3, v1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    .line 176
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/2addr v1, v2

    .line 179
    :cond_3
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 180
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_b

    :cond_4
    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    goto :goto_1

    :cond_5
    if-gt v4, v1, :cond_3

    .line 185
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 190
    :cond_6
    sget-object v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    invoke-static {p2, p5, p4, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 193
    sget v4, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem_android_drawable:I

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_7

    .line 196
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 198
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-static {p4}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->g(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v4, :cond_a

    .line 204
    :goto_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    goto :goto_3

    :cond_8
    if-ne v4, v5, :cond_9

    .line 214
    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    .line 208
    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_a
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 348
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aput-object v3, v5, v4

    goto :goto_1

    .line 145
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 306
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->o:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 307
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->b()V

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->o:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->onStateChange([I)Z

    move-result v0

    .line 110
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->c([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 116
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->n:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->c([I)I

    move-result p1

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
