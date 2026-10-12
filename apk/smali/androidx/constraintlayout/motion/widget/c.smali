.class Landroidx/constraintlayout/motion/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:[Ljava/lang/String;


# instance fields
.field public a:Landroidx/constraintlayout/motion/utils/Easing;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:I

.field public m:[D

.field public n:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    const-string v4, "height"

    const-string v5, "pathRotate"

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/c;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->b:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->i:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    const/16 v0, 0x12

    .line 308
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->m:[D

    .line 309
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->n:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/c;Landroidx/constraintlayout/motion/widget/c;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 124
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 54
    iput v4, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 61
    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->i:F

    .line 63
    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 65
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    .line 66
    iput v4, v0, Landroidx/constraintlayout/motion/widget/c;->l:I

    const/16 v4, 0x12

    .line 308
    new-array v5, v4, [D

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/c;->m:[D

    .line 309
    new-array v4, v4, [D

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/c;->n:[D

    .line 125
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x42c80000    # 100.0f

    if-eq v4, v6, :cond_b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    .line 80
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 82
    iput v4, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    .line 84
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 85
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    .line 86
    :goto_0
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    .line 87
    :goto_1
    iget v10, v3, Landroidx/constraintlayout/motion/widget/c;->g:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    sub-float v12, v10, v11

    .line 88
    iget v13, v3, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    sub-float v15, v13, v14

    .line 90
    iget v5, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->d:F

    .line 94
    iget v5, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    div-float v17, v11, v7

    add-float v17, v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    .line 95
    iget v7, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    div-float v19, v14, v18

    add-float v19, v19, v7

    .line 96
    iget v6, v3, Landroidx/constraintlayout/motion/widget/c;->e:F

    div-float v10, v10, v18

    add-float/2addr v10, v6

    .line 97
    iget v3, v3, Landroidx/constraintlayout/motion/widget/c;->f:F

    div-float v13, v13, v18

    add-float/2addr v13, v3

    sub-float v10, v10, v17

    sub-float v13, v13, v19

    mul-float v3, v10, v4

    add-float/2addr v3, v5

    mul-float v12, v12, v8

    div-float v5, v12, v18

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    .line 100
    iput v3, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    mul-float v3, v13, v4

    add-float/2addr v3, v7

    mul-float v15, v15, v9

    div-float v6, v15, v18

    sub-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    .line 101
    iput v3, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    add-float/2addr v11, v12

    float-to-int v3, v11

    int-to-float v3, v3

    .line 102
    iput v3, v0, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v14, v15

    float-to-int v3, v14

    int-to-float v3, v3

    .line 103
    iput v3, v0, Landroidx/constraintlayout/motion/widget/c;->h:F

    .line 105
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    .line 106
    :goto_2
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    .line 107
    :cond_3
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    .line 108
    :goto_3
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v16, 0x0

    :goto_4
    const/4 v8, 0x2

    goto :goto_5

    :cond_5
    move/from16 v16, v8

    goto :goto_4

    .line 109
    :goto_5
    iput v8, v0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 110
    iget v8, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    mul-float v3, v3, v10

    add-float/2addr v3, v8

    mul-float v16, v16, v13

    add-float v16, v16, v3

    sub-float v3, v16, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 111
    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    mul-float v10, v10, v7

    add-float/2addr v10, v2

    mul-float v13, v13, v4

    add-float/2addr v13, v10

    sub-float/2addr v13, v6

    float-to-int v2, v13

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 113
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 114
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    return-void

    :cond_6
    const/high16 v18, 0x40000000    # 2.0f

    .line 140
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 142
    iput v4, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    .line 144
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 145
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    .line 146
    :goto_6
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_7

    :cond_8
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    .line 148
    :goto_7
    iget v7, v3, Landroidx/constraintlayout/motion/widget/c;->g:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    sub-float v9, v7, v8

    .line 149
    iget v10, v3, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    sub-float v12, v10, v11

    .line 151
    iget v13, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/c;->d:F

    .line 155
    iget v13, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    div-float v14, v8, v18

    add-float/2addr v14, v13

    .line 156
    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    div-float v15, v11, v18

    add-float/2addr v15, v2

    move/from16 v16, v2

    .line 157
    iget v2, v3, Landroidx/constraintlayout/motion/widget/c;->e:F

    div-float v7, v7, v18

    add-float/2addr v7, v2

    .line 158
    iget v2, v3, Landroidx/constraintlayout/motion/widget/c;->f:F

    div-float v10, v10, v18

    add-float/2addr v10, v2

    sub-float/2addr v7, v14

    sub-float/2addr v10, v15

    mul-float v7, v7, v4

    add-float/2addr v7, v13

    mul-float v9, v9, v5

    div-float v2, v9, v18

    sub-float/2addr v7, v2

    float-to-int v2, v7

    int-to-float v2, v2

    .line 161
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    mul-float v10, v10, v4

    add-float v10, v10, v16

    mul-float v12, v12, v6

    div-float v2, v12, v18

    sub-float/2addr v10, v2

    float-to-int v2, v10

    int-to-float v2, v2

    .line 162
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    add-float/2addr v8, v9

    float-to-int v2, v8

    int-to-float v2, v2

    .line 163
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v11, v12

    float-to-int v2, v11

    int-to-float v2, v2

    .line 164
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->h:F

    const/4 v2, 0x3

    .line 166
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 167
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v2, p1

    int-to-float v2, v2

    .line 168
    iget v3, v0, Landroidx/constraintlayout/motion/widget/c;->g:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 169
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 171
    :cond_9
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v2, p2

    int-to-float v2, v2

    .line 172
    iget v3, v0, Landroidx/constraintlayout/motion/widget/c;->h:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 173
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 176
    :cond_a
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 177
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    return-void

    :cond_b
    const/high16 v18, 0x40000000    # 2.0f

    .line 182
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 184
    iput v4, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    .line 186
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 187
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_8

    :cond_c
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    .line 188
    :goto_8
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v4

    goto :goto_9

    :cond_d
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    .line 190
    :goto_9
    iget v8, v3, Landroidx/constraintlayout/motion/widget/c;->g:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    sub-float/2addr v8, v9

    .line 191
    iget v9, v3, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    sub-float/2addr v9, v10

    .line 193
    iget v10, v0, Landroidx/constraintlayout/motion/widget/c;->c:F

    iput v10, v0, Landroidx/constraintlayout/motion/widget/c;->d:F

    .line 195
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    .line 197
    :goto_a
    iget v10, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    div-float v12, v11, v18

    add-float/2addr v12, v10

    .line 198
    iget v13, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    div-float v15, v14, v18

    add-float/2addr v15, v13

    .line 199
    iget v6, v3, Landroidx/constraintlayout/motion/widget/c;->e:F

    move/from16 p1, v4

    iget v4, v3, Landroidx/constraintlayout/motion/widget/c;->g:F

    div-float v4, v4, v18

    add-float/2addr v4, v6

    .line 200
    iget v6, v3, Landroidx/constraintlayout/motion/widget/c;->f:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/c;->h:F

    div-float v3, v3, v18

    add-float/2addr v3, v6

    sub-float/2addr v4, v12

    sub-float/2addr v3, v15

    mul-float v6, v4, p1

    add-float/2addr v10, v6

    mul-float v8, v8, v5

    div-float v5, v8, v18

    sub-float/2addr v10, v5

    float-to-int v10, v10

    int-to-float v10, v10

    .line 203
    iput v10, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    mul-float v10, v3, p1

    add-float/2addr v13, v10

    mul-float v9, v9, v7

    div-float v7, v9, v18

    sub-float/2addr v13, v7

    float-to-int v12, v13

    int-to-float v12, v12

    .line 204
    iput v12, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    add-float/2addr v11, v8

    float-to-int v8, v11

    int-to-float v8, v8

    .line 205
    iput v8, v0, Landroidx/constraintlayout/motion/widget/c;->g:F

    add-float/2addr v14, v9

    float-to-int v8, v14

    int-to-float v8, v8

    .line 206
    iput v8, v0, Landroidx/constraintlayout/motion/widget/c;->h:F

    .line 207
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_f

    const/16 v16, 0x0

    goto :goto_b

    :cond_f
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    move/from16 v16, v8

    :goto_b
    neg-float v3, v3

    mul-float v3, v3, v16

    mul-float v4, v4, v16

    const/4 v8, 0x1

    .line 213
    iput v8, v0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 214
    iget v8, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    add-float/2addr v8, v6

    sub-float/2addr v8, v5

    float-to-int v5, v8

    int-to-float v5, v5

    .line 215
    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    add-float/2addr v2, v10

    sub-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v5, v3

    .line 216
    iput v5, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    add-float/2addr v2, v4

    .line 217
    iput v2, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 219
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 220
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    return-void
.end method

.method public static a(FF)Z
    .locals 1

    .line 236
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, p1

    .line 239
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static d(FF[F[I[D[D)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 572
    :goto_0
    array-length v7, p3

    const/4 v8, 0x1

    if-ge v2, v7, :cond_4

    .line 573
    aget-wide v9, p4, v2

    double-to-float v7, v9

    .line 574
    aget-wide v9, p5, v2

    .line 578
    aget v9, p3, v2

    if-eq v9, v8, :cond_3

    const/4 v8, 0x2

    if-eq v9, v8, :cond_2

    const/4 v8, 0x3

    if-eq v9, v8, :cond_1

    const/4 v8, 0x4

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    mul-float p3, v0, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr v3, p3

    mul-float p3, v0, v6

    div-float/2addr p3, v2

    sub-float/2addr v5, p3

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float v4, v4, p3

    mul-float v6, v6, p3

    add-float/2addr v4, v3

    add-float/2addr v6, v5

    sub-float v2, p3, p0

    mul-float v2, v2, v3

    mul-float v4, v4, p0

    add-float/2addr v4, v2

    add-float/2addr v4, v0

    .line 629
    aput v4, p2, v1

    sub-float/2addr p3, p1

    mul-float p3, p3, v5

    mul-float v6, v6, p1

    add-float/2addr v6, p3

    add-float/2addr v6, v0

    .line 630
    aput v6, p2, v8

    return-void
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5

    .line 681
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 682
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 683
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->i:F

    .line 684
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 685
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 686
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 689
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_0

    .line 690
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b([I[D[FI)V
    .locals 9

    .line 253
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 254
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 255
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 256
    iget v3, p0, Landroidx/constraintlayout/motion/widget/c;->h:F

    const/4 v4, 0x0

    .line 258
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 259
    aget-wide v7, p2, v4

    double-to-float v5, v7

    .line 261
    aget v7, p1, v4

    if-eq v7, v6, :cond_3

    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    const/4 v6, 0x3

    if-eq v7, v6, :cond_1

    const/4 v6, 0x4

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v2, v0

    const/4 p2, 0x0

    add-float/2addr v2, p2

    .line 276
    aput v2, p3, p4

    add-int/2addr p4, v6

    div-float/2addr v3, p1

    add-float/2addr v3, v1

    add-float/2addr v3, p2

    .line 277
    aput v3, p3, p4

    return-void
.end method

.method public final c([I[D[FI)V
    .locals 8

    .line 432
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 433
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 434
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 435
    iget v3, p0, Landroidx/constraintlayout/motion/widget/c;->h:F

    const/4 v4, 0x0

    .line 450
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 451
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 453
    aget v6, p1, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-float/2addr v2, v0

    add-float/2addr v3, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 486
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 489
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v4, v1, p1

    add-float v5, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v6, v3, p1

    add-float/2addr v0, p1

    add-float/2addr v3, p1

    add-int/lit8 p1, p4, 0x1

    .line 537
    aput p2, p3, p4

    add-int/lit8 p2, p4, 0x2

    .line 538
    aput v4, p3, p1

    add-int/lit8 p1, p4, 0x3

    .line 539
    aput v5, p3, p2

    add-int/lit8 p2, p4, 0x4

    .line 540
    aput v1, p3, p1

    add-int/lit8 p1, p4, 0x5

    .line 541
    aput v2, p3, p2

    add-int/lit8 p2, p4, 0x6

    .line 542
    aput v6, p3, p1

    add-int/lit8 p4, p4, 0x7

    .line 543
    aput v0, p3, p2

    .line 544
    aput v3, p3, p4

    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/c;)I
    .locals 1
    .param p1    # Landroidx/constraintlayout/motion/widget/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 676
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c;->d:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/c;->d:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/c;->compareTo(Landroidx/constraintlayout/motion/widget/c;)I

    move-result p1

    return p1
.end method
