.class Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 20

    move-object/from16 v0, p0

    .line 1720
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v4, v1

    .line 1721
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v8, p3, v1

    div-float v9, p4, v1

    mul-float v1, v8, v8

    mul-float v3, v9, v9

    add-float/2addr v3, v1

    float-to-double v6, v3

    .line 1727
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v10, v9

    float-to-double v12, v8

    .line 1728
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v7, v10

    .line 1730
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v1

    .line 1731
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v3

    .line 1735
    new-instance v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v11, v4

    add-int/lit8 v12, v11, -0xc

    .line 1736
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-double v12, v12

    float-to-int v14, v5

    add-int/lit8 v15, v14, -0xc

    .line 1737
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 p1, v3

    int-to-double v2, v15

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v11, v11, 0xc

    .line 1738
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-wide v15, v2

    int-to-double v1, v1

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v14, v14, 0xc

    .line 1739
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-wide/from16 v17, v1

    int-to-double v1, v3

    move-wide v11, v12

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v1

    invoke-direct/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 1743
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1744
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1745
    invoke-virtual {v3, v10}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1746
    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/Sprite;->Flung(FFFFFF)V

    const/4 v2, 0x1

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/Canvas;->Flung(FFFFFFZ)V

    return v19
.end method
