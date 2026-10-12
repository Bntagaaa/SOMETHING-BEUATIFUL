.class Landroidx/constraintlayout/motion/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:[[F

.field public static final w:[[F


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:Z

.field public final l:[F

.field public m:F

.field public n:F

.field public final o:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final p:F

.field public final q:F

.field public final r:Z

.field public final s:F

.field public final t:I

.field public final u:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    .line 59
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    new-array v7, v0, [F

    fill-array-data v7, :array_6

    const/4 v8, 0x7

    new-array v8, v8, [[F

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v3, 0x4

    aput-object v5, v8, v3

    const/4 v4, 0x5

    aput-object v6, v8, v4

    const/4 v5, 0x6

    aput-object v7, v8, v5

    sput-object v8, Landroidx/constraintlayout/motion/widget/g;->v:[[F

    .line 68
    new-array v6, v0, [F

    fill-array-data v6, :array_7

    new-array v7, v0, [F

    fill-array-data v7, :array_8

    new-array v8, v0, [F

    fill-array-data v8, :array_9

    new-array v10, v0, [F

    fill-array-data v10, :array_a

    new-array v11, v0, [F

    fill-array-data v11, :array_b

    new-array v12, v0, [F

    fill-array-data v12, :array_c

    new-array v5, v5, [[F

    aput-object v6, v5, v9

    aput-object v7, v5, v1

    aput-object v8, v5, v0

    aput-object v10, v5, v2

    aput-object v11, v5, v3

    aput-object v12, v5, v4

    sput-object v5, Landroidx/constraintlayout/motion/widget/g;->w:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/g;->a:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/g;->b:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/g;->c:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->d:I

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->e:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->f:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->g:F

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->h:F

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->j:F

    .line 55
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/g;->k:Z

    const/4 v2, 0x2

    .line 56
    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/g;->l:[F

    const/high16 v2, 0x40800000    # 4.0f

    .line 92
    iput v2, p0, Landroidx/constraintlayout/motion/widget/g;->p:F

    const v2, 0x3f99999a    # 1.2f

    .line 93
    iput v2, p0, Landroidx/constraintlayout/motion/widget/g;->q:F

    const/4 v2, 0x1

    .line 94
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/g;->r:Z

    .line 95
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->s:F

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/g;->t:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 99
    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->u:F

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/g;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 103
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 124
    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_c

    .line 132
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 133
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v1, v3, :cond_0

    .line 134
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->d:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->d:I

    goto/16 :goto_1

    .line 135
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    if-ne v1, v3, :cond_1

    .line 136
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->a:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->a:I

    .line 137
    sget-object v3, Landroidx/constraintlayout/motion/widget/g;->v:[[F

    aget-object v1, v3, v1

    aget v3, v1, v0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/g;->h:F

    .line 138
    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->g:F

    goto/16 :goto_1

    .line 139
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v1, v3, :cond_2

    .line 140
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->b:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->b:I

    .line 141
    sget-object v3, Landroidx/constraintlayout/motion/widget/g;->w:[[F

    aget-object v1, v3, v1

    aget v3, v1, v0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/g;->i:F

    .line 142
    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->j:F

    goto/16 :goto_1

    .line 143
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v1, v3, :cond_3

    .line 144
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->p:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->p:F

    goto :goto_1

    .line 145
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v1, v3, :cond_4

    .line 146
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->q:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->q:F

    goto :goto_1

    .line 147
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v1, v3, :cond_5

    .line 148
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/g;->r:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/g;->r:Z

    goto :goto_1

    .line 149
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v1, v3, :cond_6

    .line 150
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->s:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->s:F

    goto :goto_1

    .line 151
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v1, v3, :cond_7

    .line 152
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->u:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->u:F

    goto :goto_1

    .line 153
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v1, v3, :cond_8

    .line 154
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->e:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->e:I

    goto :goto_1

    .line 155
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v1, v3, :cond_9

    .line 156
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->c:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->c:I

    goto :goto_1

    .line 157
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v1, v3, :cond_a

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->t:I

    goto :goto_1

    .line 159
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v1, v3, :cond_b

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->f:I

    :cond_b
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 126
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 501
    iget v0, p0, Landroidx/constraintlayout/motion/widget/g;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public getFlags()I
    .locals 1

    .line 548
    iget v0, p0, Landroidx/constraintlayout/motion/widget/g;->t:I

    return v0
.end method

.method public getMaxVelocity()F
    .locals 1

    .line 486
    iget v0, p0, Landroidx/constraintlayout/motion/widget/g;->p:F

    return v0
.end method

.method public setRTL(Z)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    .line 107
    sget-object v3, Landroidx/constraintlayout/motion/widget/g;->v:[[F

    sget-object v4, Landroidx/constraintlayout/motion/widget/g;->w:[[F

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eqz p1, :cond_0

    .line 108
    aget-object p1, v4, v1

    aput-object p1, v4, v2

    .line 109
    aget-object p1, v4, v6

    aput-object p1, v4, v7

    .line 110
    aget-object p1, v3, v6

    aput-object p1, v3, v7

    .line 111
    aget-object p1, v3, v5

    aput-object p1, v3, v0

    goto :goto_0

    .line 113
    :cond_0
    aget-object p1, v4, v6

    aput-object p1, v4, v2

    .line 114
    aget-object p1, v4, v1

    aput-object p1, v4, v7

    .line 115
    aget-object p1, v3, v5

    aput-object p1, v3, v7

    .line 116
    aget-object p1, v3, v6

    aput-object p1, v3, v0

    .line 118
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/g;->a:I

    aget-object p1, v3, p1

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/g;->h:F

    .line 119
    aget p1, p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/g;->g:F

    .line 120
    iget p1, p0, Landroidx/constraintlayout/motion/widget/g;->b:I

    aget-object p1, v4, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/g;->i:F

    .line 121
    aget p1, p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/g;->j:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/g;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/g;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
