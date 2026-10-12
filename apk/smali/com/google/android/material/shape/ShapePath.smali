.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathCubicOperation;,
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;,
        Lcom/google/android/material/shape/ShapePath$a;,
        Lcom/google/android/material/shape/ShapePath$b;,
        Lcom/google/android/material/shape/ShapePath$c;
    }
.end annotation


# static fields
.field protected static final ANGLE_LEFT:F = 180.0f


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public currentShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    .line 327
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 319
    iget v2, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 323
    iget v3, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 303
    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 327
    iget v2, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    .line 618
    iput v2, v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 622
    iput v0, v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 306
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/material/shape/ShapePath$a;

    invoke-direct {v2, v1}, Lcom/google/android/material/shape/ShapePath$a;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    return-void
.end method

.method public addArc(FFFFFF)V
    .locals 4

    .line 211
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 618
    iput p5, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 622
    iput p6, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 214
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/google/android/material/shape/ShapePath$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapePath$a;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 275
    :goto_1
    invoke-virtual {p0, p5}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 276
    iget-object p5, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iput v3, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p3, p5

    .line 343
    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p4, p3

    .line 347
    iput p4, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/shape/ShapePath$PathOperation;

    .line 244
    invoke-virtual {v3, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cubicToPoint(FFFFFF)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 189
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;-><init>(FFFFFF)V

    .line 191
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->c:Z

    .line 343
    iput v5, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 347
    iput v6, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public lineTo(FF)V
    .locals 4

    .line 130
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    .line 446
    iput p1, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->a:F

    .line 446
    iput p2, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 133
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/google/android/material/shape/ShapePath$b;

    .line 319
    iget v2, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 323
    iget v3, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 135
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/ShapePath$b;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$b;->a()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 141
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$b;->a()F

    move-result v3

    add-float/2addr v3, v2

    .line 275
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 276
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iput v3, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    .line 343
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 347
    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public quadToPoint(FFFF)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 160
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    .line 521
    iput p1, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    .line 505
    iput p2, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    .line 497
    iput p3, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    .line 513
    iput p4, v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    .line 165
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->c:Z

    .line 343
    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 347
    iput p4, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return-void
.end method

.method public reset(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    return-void
.end method

.method public reset(FFFF)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 339
    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 343
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 347
    iput p2, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 351
    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 355
    iput p3, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 118
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->c:Z

    return-void
.end method
