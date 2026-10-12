.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final k:[I


# instance fields
.field public a:Lcom/google/zxing/client/android/camera/CameraManager;

.field public final b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Bitmap;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:I

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->k:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 p1, 0x60000000

    .line 65
    iput p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:I

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:I

    const/high16 p1, -0x340000

    .line 67
    iput p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I

    const p1, -0x3f663400

    .line 68
    iput p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:Ljava/util/ArrayList;

    .line 177
    monitor-enter v0

    .line 178
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xa

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 184
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    .line 80
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 91
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v0

    .line 92
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v8, v3

    .line 93
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/16 v8, 0xa0

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v7, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    sget-object v2, Lcom/google/zxing/client/android/ViewfinderView;->k:[I

    iget v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    iget v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 108
    iget v2, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    move v14, v4

    move v4, v1

    move v1, v2

    move v2, v3

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 112
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 114
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:Ljava/util/ArrayList;

    .line 115
    iget-object v4, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:Ljava/util/ArrayList;

    .line 116
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 117
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 119
    iput-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:Ljava/util/ArrayList;

    goto :goto_3

    .line 121
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:Ljava/util/ArrayList;

    .line 122
    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:Ljava/util/ArrayList;

    .line 123
    iget-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v8, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/ResultPoint;

    .line 127
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v5

    int-to-float v10, v10

    .line 128
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v11, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 v12, 0x40c00000    # 6.0f

    .line 127
    invoke-virtual {v0, v10, v8, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 131
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v4, :cond_7

    .line 134
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v7, 0x50

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    monitor-enter v4

    .line 138
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPoint;

    .line 139
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    add-int/2addr v8, v5

    int-to-float v8, v8

    .line 140
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float v7, v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v9

    int-to-float v7, v7

    iget-object v10, p0, Lcom/google/zxing/client/android/ViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 v11, 0x40400000    # 3.0f

    .line 139
    invoke-virtual {v0, v8, v7, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 143
    :cond_6
    monitor-exit v4

    goto :goto_6

    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 148
    :cond_7
    :goto_6
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v0, -0x6

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v11, v0, -0x6

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v12, v0, 0x6

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v13, v0, 0x6

    const-wide/16 v8, 0x50

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void

    .line 131
    :goto_7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Lcom/google/zxing/client/android/camera/CameraManager;

    return-void
.end method
