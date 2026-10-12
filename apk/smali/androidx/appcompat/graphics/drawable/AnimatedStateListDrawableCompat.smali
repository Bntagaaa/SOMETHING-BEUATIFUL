.class public Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;
    }
.end annotation


# instance fields
.field public p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

.field public q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroid/content/res/Resources;)V
    .locals 1

    .line 410
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 108
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 119
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 120
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 139
    const-string v0, "parser error"

    const-string v1, "AnimatedStateListDrawableCompat"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 141
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 142
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 145
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    .line 152
    invoke-static {p0, v2, p1, v3, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 150
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 154
    :goto_2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    new-instance v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 180
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v2

    :cond_0
    move-object v5, p2

    .line 176
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 237
    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    .line 347
    invoke-virtual {v0, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    .line 348
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aput-object p1, v1, p2

    .line 670
    iget-object p1, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .line 252
    invoke-static {p3}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->d(IILandroid/graphics/drawable/Drawable;Z)I

    return-void
.end method

.method public final b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    .locals 3

    .line 616
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V
    .locals 1

    .line 720
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 721
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    if-eqz v0, :cond_0

    .line 722
    check-cast p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    :cond_0
    return-void
.end method

.method public final f()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
    .locals 3

    .line 616
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 204
    sget-object v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {v2, v4, v3, v5}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 206
    sget v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setVisible(ZZ)Z

    .line 448
    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    .line 451
    iget v8, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    invoke-static {v5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 454
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v9, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 455
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 454
    invoke-virtual {v6, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->setVariablePadding(Z)V

    .line 457
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v9, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 458
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 457
    invoke-virtual {v6, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->setConstantSize(Z)V

    .line 460
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v9, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 461
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 460
    invoke-virtual {v6, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->setEnterFadeDuration(I)V

    .line 463
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v9, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 464
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 463
    invoke-virtual {v6, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->setExitFadeDuration(I)V

    .line 466
    sget v8, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setDither(Z)V

    .line 587
    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 880
    iput-object v2, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 1206
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v9, :cond_0

    const/16 v9, 0xa0

    .line 884
    :cond_0
    iget v10, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 885
    iput v9, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-eq v10, v9, :cond_2

    .line 887
    iput-boolean v8, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 888
    iput-boolean v8, v6, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 482
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/2addr v5, v7

    .line 484
    :cond_3
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v7, :cond_15

    .line 485
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v5, :cond_4

    const/4 v10, 0x3

    if-eq v6, v10, :cond_15

    :cond_4
    const/4 v10, 0x2

    if-eq v6, v10, :cond_5

    goto :goto_1

    :cond_5
    if-le v9, v5, :cond_6

    goto :goto_1

    .line 493
    :cond_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "item"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x4

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v6, :cond_d

    .line 564
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {v2, v4, v3, v6}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 566
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    invoke-virtual {v6, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 569
    sget v14, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    .line 570
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_7

    .line 572
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v11

    invoke-virtual {v11, v1, v12}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 574
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    invoke-static {v3}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->g(Landroid/util/AttributeSet;)[I

    move-result-object v6

    .line 578
    const-string v12, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v11, :cond_b

    .line 581
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v9, :cond_8

    goto :goto_2

    :cond_8
    if-ne v11, v10, :cond_a

    .line 589
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vector"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 590
    invoke-static/range {p2 .. p5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v11

    goto :goto_3

    .line 592
    :cond_9
    invoke-static/range {p2 .. p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_3

    .line 585
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_3
    if-eqz v11, :cond_c

    .line 601
    iget-object v9, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    .line 347
    invoke-virtual {v9, v11}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v10

    .line 348
    iget-object v11, v9, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aput-object v6, v11, v10

    .line 670
    iget-object v6, v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 598
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v13, "transition"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 509
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {v2, v4, v3, v6}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 511
    sget v13, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 513
    sget v14, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 516
    sget v15, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v6, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-lez v15, :cond_e

    .line 519
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v11

    invoke-virtual {v11, v1, v15}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 521
    :cond_e
    sget v15, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    invoke-virtual {v6, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 523
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v11, :cond_12

    .line 529
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v9, :cond_f

    goto :goto_4

    :cond_f
    if-ne v11, v10, :cond_11

    .line 537
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "animated-vector"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 538
    invoke-static/range {p1 .. p5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v11

    goto :goto_5

    .line 541
    :cond_10
    invoke-static/range {p2 .. p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_5

    .line 533
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_5
    if-eqz v11, :cond_14

    if-eq v13, v12, :cond_13

    if-eq v14, v12, :cond_13

    .line 554
    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    invoke-virtual {v6, v13, v14, v11, v15}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->d(IILandroid/graphics/drawable/Drawable;Z)I

    goto/16 :goto_1

    .line 551
    :cond_13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_14
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 263
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->jumpToCurrentState()V

    .line 264
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->stop()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    .line 267
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 269
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 607
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 608
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->b()V

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->t:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 17
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 277
    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    .line 675
    invoke-virtual {v2, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->c([I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->c([I)I

    move-result v3

    .line 414
    :goto_0
    iget v2, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_d

    .line 292
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 294
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    if-ne v3, v2, :cond_1

    goto/16 :goto_6

    .line 297
    :cond_1
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->reverse()V

    .line 300
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    iput v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 301
    iput v3, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    goto/16 :goto_6

    .line 305
    :cond_2
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 307
    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->stop()V

    :cond_3
    const/4 v5, 0x0

    .line 312
    iput-object v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    const/4 v5, -0x1

    .line 313
    iput v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 314
    iput v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 315
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    if-gez v2, :cond_4

    .line 316
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    goto :goto_1

    .line 683
    :cond_4
    iget-object v7, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    .line 683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    if-gez v3, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    .line 683
    :cond_5
    iget-object v8, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    if-eqz v8, :cond_c

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    int-to-long v9, v7

    const/16 v7, 0x20

    shl-long/2addr v9, v7

    int-to-long v7, v8

    or-long/2addr v7, v9

    .line 688
    iget-object v9, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v7, v8, v12}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-int v9, v12

    if-gez v9, :cond_7

    goto :goto_5

    .line 698
    :cond_7
    iget-object v12, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v7, v8, v13}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide v14, 0x200000000L

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    .line 329
    :goto_3
    invoke-virtual {v0, v9}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    .line 331
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 332
    instance-of v13, v9, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v13, :cond_a

    .line 693
    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v10}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v10, 0x100000000L

    and-long/2addr v7, v10

    cmp-long v5, v7, v14

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    .line 334
    :cond_9
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5, v9, v4, v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    .line 336
    :cond_a
    instance-of v5, v9, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v5, :cond_b

    .line 338
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;

    check-cast v9, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v5, v9}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    goto :goto_4

    .line 339
    :cond_b
    instance-of v5, v9, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_c

    .line 340
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    check-cast v9, Landroid/graphics/drawable/Animatable;

    invoke-direct {v5, v9}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 345
    :goto_4
    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->start()V

    .line 346
    iput-object v5, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    .line 347
    iput v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 348
    iput v3, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    goto :goto_6

    .line 279
    :cond_c
    :goto_5
    invoke-virtual {v0, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_6
    const/4 v4, 0x1

    .line 283
    :cond_d
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 285
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v1, v4

    return v1

    :cond_e
    return v4
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 217
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setVisible(ZZ)Z

    move-result v0

    .line 218
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;->start()V

    return v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    :cond_2
    return v0
.end method
