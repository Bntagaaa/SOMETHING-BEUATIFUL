.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Landroidx/dynamicanimation/animation/FlingAnimation$a;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 43
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    .line 703
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    const/high16 v1, 0x427a0000    # 62.5f

    mul-float v0, v0, v1

    .line 237
    iput v0, p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;->b:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 43
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    .line 703
    iget p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p2, p2, v0

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float p2, p2, v0

    .line 237
    iput p2, p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;->b:F

    return-void
.end method


# virtual methods
.method public final c(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float p1, p1, v0

    .line 237
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    iput p1, v0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->b:F

    return-void
.end method

.method public final d(J)Z
    .locals 8

    .line 157
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    float-to-double v2, v1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float v4, p1, p2

    .line 217
    iget-object v5, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    iget v6, v5, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a:F

    mul-float v4, v4, v6

    float-to-double v6, v4

    .line 217
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-float v2, v6

    iget-object v3, v5, Landroidx/dynamicanimation/animation/FlingAnimation$a;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    iput v2, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    .line 218
    iget v2, v5, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v6, v0

    float-to-double v0, v1

    mul-float v2, v2, p1

    div-float/2addr v2, p2

    float-to-double p1, v2

    .line 219
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    add-double/2addr p1, v6

    double-to-float p1, p1

    iput p1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->a:F

    .line 220
    iget p2, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    invoke-virtual {v5, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 221
    iput p1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    .line 158
    :cond_0
    iget p1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->a:F

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 159
    iget p2, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 162
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    const/4 v1, 0x1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 163
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    return v1

    .line 166
    :cond_1
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    .line 167
    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    return v1

    :cond_2
    cmpl-float v2, p1, v2

    if-gez v2, :cond_4

    cmpg-float v0, p1, v0

    if-lez v0, :cond_4

    .line 186
    invoke-virtual {v5, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public getFriction()F
    .locals 2

    .line 213
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    iget v0, v0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, -0x3f79999a    # -4.2f

    mul-float p1, p1, v0

    .line 209
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->m:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    iput p1, v0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a:F

    return-object p0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method
