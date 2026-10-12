.class Landroidx/constraintlayout/motion/utils/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final s:[D


# instance fields
.field public a:[D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    .line 194
    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/motion/utils/a$a;->s:[D

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 6

    .line 260
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->j:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->p:D

    mul-double v0, v0, v2

    .line 261
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/a$a;->o:D

    mul-double v2, v2, v4

    .line 262
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/a$a;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v4, v2

    .line 263
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->q:Z

    if-eqz v2, :cond_0

    neg-double v0, v0

    mul-double v0, v0, v4

    return-wide v0

    :cond_0
    mul-double v0, v0, v4

    return-wide v0
.end method

.method public final b()D
    .locals 6

    .line 267
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->j:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->p:D

    mul-double v0, v0, v2

    .line 268
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/a$a;->o:D

    mul-double v2, v2, v4

    .line 269
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/a$a;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 270
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->q:Z

    if-eqz v0, :cond_0

    neg-double v0, v2

    mul-double v0, v0, v4

    return-wide v0

    :cond_0
    mul-double v2, v2, v4

    return-wide v2
.end method

.method public final c(D)V
    .locals 6

    .line 244
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->d:D

    sub-double/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->c:D

    sub-double v0, p1, v0

    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/a$a;->i:D

    mul-double v0, v0, p1

    const-wide/16 p1, 0x0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/a$a;->a:[D

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    mul-double v0, v0, v2

    double-to-int p2, v0

    int-to-double v2, p2

    sub-double/2addr v0, v2

    .line 303
    aget-wide v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-wide v4, p1, p2

    sub-double/2addr v4, v2

    mul-double v4, v4, v0

    add-double p1, v4, v2

    :goto_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double p1, p1, v0

    .line 247
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->o:D

    .line 248
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/a$a;->p:D

    return-void
.end method

.method public getLinearDX(D)D
    .locals 0

    .line 284
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/a$a;->l:D

    return-wide p1
.end method

.method public getLinearDY(D)D
    .locals 0

    .line 288
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/a$a;->m:D

    return-wide p1
.end method

.method public getLinearX(D)D
    .locals 4

    .line 274
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->i:D

    mul-double p1, p1, v0

    .line 275
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->f:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->e:D

    sub-double/2addr v0, v2

    mul-double v0, v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getLinearY(D)D
    .locals 4

    .line 279
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->i:D

    mul-double p1, p1, v0

    .line 280
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/a$a;->h:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/a$a;->g:D

    sub-double/2addr v0, v2

    mul-double v0, v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method
