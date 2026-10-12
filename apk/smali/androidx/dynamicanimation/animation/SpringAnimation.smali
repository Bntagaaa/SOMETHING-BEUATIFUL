.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Landroidx/dynamicanimation/animation/SpringForce;

.field public n:F

.field public o:Z


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    .line 107
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    .line 158
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 159
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public final c(F)V
    .locals 0

    return-void
.end method

.method public canSkipToEnd()Z
    .locals 5

    .line 191
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(J)Z
    .locals 20

    move-object/from16 v0, p0

    .line 215
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 216
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 218
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    .line 220
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 221
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 222
    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    return v2

    .line 226
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 230
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    float-to-double v9, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    float-to-double v11, v1

    const-wide/16 v7, 0x2

    div-long v14, p1, v7

    move-wide v7, v14

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->a(JDD)Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    move-result-object v1

    .line 231
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    iget v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 232
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->n:F

    .line 234
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->a:F

    float-to-double v5, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    float-to-double v7, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->a(JDD)Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    move-result-object v1

    .line 235
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 236
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    goto :goto_0

    .line 239
    :cond_2
    iget-object v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    float-to-double v8, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    float-to-double v10, v1

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Landroidx/dynamicanimation/animation/SpringForce;->a(JDD)Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    move-result-object v1

    .line 240
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 241
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$o;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 244
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 245
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 247
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 262
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1, v5}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 249
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 128
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public skipToEnd()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 180
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->o:Z

    :cond_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 5

    .line 197
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 202
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    float-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 205
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    float-to-double v2, v2

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 135
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->m:Landroidx/dynamicanimation/animation/SpringForce;

    .line 703
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->d:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double v1, v1, v3

    .line 330
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->e:D

    .line 136
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
