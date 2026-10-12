.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 262
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 263
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 266
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 267
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 273
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method public parse(Landroid/view/MotionEvent;)V
    .locals 23

    move-object/from16 v0, p0

    .line 276
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v1

    .line 277
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v2

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 288
    new-instance v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v3, v10

    add-int/lit8 v5, v3, -0xc

    const/4 v6, 0x0

    .line 289
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v13, v5

    float-to-int v5, v11

    add-int/lit8 v7, v5, -0xc

    .line 290
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v7, v7

    add-int/lit8 v9, v1, -0x1

    add-int/lit8 v3, v3, 0xc

    .line 291
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v15, v5

    const/4 v9, 0x0

    int-to-double v4, v3

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v15, v15, 0xc

    .line 292
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v21, v10

    const/16 v22, 0x0

    int-to-double v9, v3

    move-wide/from16 v17, v4

    move-wide v15, v7

    move-wide/from16 v19, v9

    invoke-direct/range {v12 .. v20}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    if-eq v3, v4, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    goto/16 :goto_0

    .line 314
    :cond_0
    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 315
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Canvas"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    iget-boolean v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    if-nez v3, :cond_3

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    sub-float v10, v21, v3

    .line 321
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Canvas;->i(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    sub-float v3, v11, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Canvas;->i(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_0

    .line 325
    :cond_3
    iput-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 326
    iput-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    cmpg-float v3, v21, v22

    if-lez v3, :cond_4

    int-to-float v1, v1

    cmpl-float v1, v21, v1

    if-gtz v1, :cond_4

    cmpg-float v1, v11, v22

    if-lez v1, :cond_4

    int-to-float v1, v2

    cmpl-float v1, v11, v1

    if-lez v1, :cond_5

    .line 330
    :cond_4
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->c(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return-void

    .line 337
    :cond_5
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 338
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 339
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 340
    invoke-virtual {v2, v12}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 341
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_7
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 348
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 349
    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move/from16 v10, v21

    invoke-virtual/range {v5 .. v11}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    move/from16 v10, v21

    :goto_3
    move/from16 v21, v10

    goto :goto_2

    :cond_9
    move/from16 v10, v21

    .line 355
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    invoke-virtual/range {v5 .. v12}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 356
    iput v10, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 357
    iput v11, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    return-void

    :cond_a
    move/from16 v10, v21

    .line 364
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    if-nez v1, :cond_d

    .line 367
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 368
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 369
    invoke-virtual {v3, v10, v11}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 370
    invoke-virtual {v3, v10, v11}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    const/4 v2, 0x1

    goto :goto_4

    .line 375
    :cond_c
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, v10, v11, v2}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    goto :goto_6

    .line 378
    :cond_d
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 379
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 380
    invoke-virtual {v2, v10, v11}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 381
    invoke-virtual {v2, v10, v11}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_5

    .line 388
    :cond_f
    :goto_6
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, v10, v11}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 391
    iput-boolean v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 392
    iput v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 393
    iput v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 394
    iput v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 395
    iput v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    return-void

    :cond_10
    move/from16 v10, v21

    .line 296
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 297
    iput v10, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 298
    iput v11, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 299
    iput v10, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 300
    iput v11, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 301
    iput-boolean v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 302
    iput-boolean v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 303
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->h(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 304
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v12}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 305
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_7

    .line 309
    :cond_12
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    return-void
.end method
