.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# instance fields
.field public a:I

.field public final b:Landroidx/constraintlayout/solver/ArrayRow;

.field public c:I

.field public d:[I

.field public e:[I

.field public f:[F

.field public g:I

.field public h:I

.field public i:Z

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    .line 53
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    .line 56
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    .line 59
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 102
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->b:Landroidx/constraintlayout/solver/ArrayRow;

    .line 103
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 11

    const v0, 0x3a83126f    # 0.001f

    const v1, -0x457ced91    # -0.001f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    cmpg-float v2, p2, v0

    if-gez v2, :cond_0

    goto/16 :goto_6

    .line 230
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->b:Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 231
    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 232
    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aput p2, p3, v5

    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput p3, p2, v5

    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aput v6, p2, v5

    .line 235
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 236
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 237
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 238
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-nez p1, :cond_10

    .line 240
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 241
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length p3, p2

    if-lt p1, p3, :cond_10

    .line 242
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 243
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_0
    if-eq v2, v6, :cond_8

    .line 251
    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v7, v9, :cond_8

    .line 252
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v9, v9, v2

    .line 253
    iget v10, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v9, v10, :cond_6

    .line 254
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget v6, v5, v2

    add-float/2addr v6, p2

    const/4 p2, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_2

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    const/4 v6, 0x0

    .line 258
    :cond_2
    aput v6, v5, v2

    cmpl-float p2, v6, p2

    if-nez p2, :cond_10

    .line 261
    iget p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    if-ne v2, p2, :cond_3

    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget p2, p2, v2

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    goto :goto_1

    .line 264
    :cond_3
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, p2, v2

    aput v0, p2, v8

    :goto_1
    if-eqz p3, :cond_4

    .line 267
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 269
    :cond_4
    iget-boolean p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-eqz p2, :cond_5

    .line 271
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 273
    :cond_5
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 274
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    return-void

    :cond_6
    if-ge v9, v10, :cond_7

    move v8, v2

    .line 281
    :cond_7
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v2, v9, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 287
    :cond_8
    iget p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/lit8 v0, p3, 0x1

    .line 288
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-eqz v1, :cond_a

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v1, v0, p3

    if-ne v1, v6, :cond_9

    goto :goto_2

    .line 294
    :cond_9
    array-length p3, v0

    goto :goto_2

    :cond_a
    move p3, v0

    .line 297
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v1, v0

    if-lt p3, v1, :cond_c

    .line 298
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    array-length v0, v0

    if-ge v1, v0, :cond_c

    const/4 v0, 0x0

    .line 300
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 301
    aget v1, v1, v0

    if-ne v1, v6, :cond_b

    move p3, v0

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 309
    :cond_c
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v1, v0

    if-lt p3, v1, :cond_d

    .line 310
    array-length p3, v0

    .line 311
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    .line 312
    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    add-int/lit8 v1, p3, -0x1

    .line 313
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    .line 320
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p3

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aput p2, v0, p3

    if-eq v8, v6, :cond_e

    .line 323
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, p2, v8

    aput v0, p2, p3

    .line 324
    aput p3, p2, v8

    goto :goto_5

    .line 326
    :cond_e
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    aput v0, p2, p3

    .line 327
    iput p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 329
    :goto_5
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 330
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 331
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 332
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-nez p1, :cond_f

    .line 334
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 336
    :cond_f
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length p3, p2

    if-lt p1, p3, :cond_10

    .line 337
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 338
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    :cond_10
    :goto_6
    return-void
.end method

.method public final clear()V
    .locals 5

    .line 409
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 411
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v2, v4, :cond_1

    .line 412
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 414
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->b:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 416
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 420
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 421
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 422
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6

    .line 432
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v2, :cond_2

    .line 437
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v3, v4, :cond_2

    .line 438
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 441
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public display()V
    .locals 5

    .line 614
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 615
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 617
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public divideByAmount(F)V
    .locals 4

    .line 500
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 502
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v1, v2, :cond_0

    .line 503
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 504
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 4

    .line 593
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 595
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v1, v2, :cond_1

    .line 596
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    .line 597
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget p1, p1, v0

    return p1

    .line 599
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentSize()I
    .locals 1

    .line 509
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    return v0
.end method

.method public getHead()I
    .locals 1

    .line 508
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    return v0
.end method

.method public final getId(I)I
    .locals 1

    .line 512
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getNextIndice(I)I
    .locals 1

    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getValue(I)F
    .locals 1

    .line 516
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget p1, v0, p1

    return p1
.end method

.method public getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    .line 558
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 560
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 562
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    .line 564
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVariableValue(I)F
    .locals 3

    .line 576
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 578
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 580
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget p1, p1, v0

    return p1

    .line 582
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 5

    .line 448
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 453
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v2, v3, :cond_2

    .line 454
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v3, v3, v0

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1

    return v0

    .line 457
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public invert()V
    .locals 5

    .line 485
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 487
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v1, v2, :cond_0

    .line 488
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 489
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    .line 123
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->b:Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 124
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aput p2, v0, v3

    .line 126
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v0, p2, v3

    .line 127
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aput v4, p2, v3

    .line 128
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 129
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 130
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 131
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-nez p1, :cond_d

    .line 133
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 134
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v0, p2

    if-lt p1, v0, :cond_d

    .line 135
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 136
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-eq v0, v4, :cond_4

    .line 144
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v5, v7, :cond_4

    .line 145
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v7, v7, v0

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_2

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aput p2, p1, v0

    return-void

    :cond_2
    if-ge v7, v8, :cond_3

    move v6, v0

    .line 152
    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/lit8 v5, v0, 0x1

    .line 159
    iget-boolean v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-eqz v7, :cond_6

    .line 162
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v7, v5, v0

    if-ne v7, v4, :cond_5

    goto :goto_1

    .line 165
    :cond_5
    array-length v0, v5

    goto :goto_1

    :cond_6
    move v0, v5

    .line 168
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v7, v5

    if-lt v0, v7, :cond_8

    .line 169
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    array-length v5, v5

    if-ge v7, v5, :cond_8

    const/4 v5, 0x0

    .line 171
    :goto_2
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v8, v7

    if-ge v5, v8, :cond_8

    .line 172
    aget v7, v7, v5

    if-ne v7, v4, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 180
    :cond_8
    :goto_3
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v7, v5

    if-lt v0, v7, :cond_9

    .line 181
    array-length v0, v5

    .line 182
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    .line 183
    iput-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    add-int/lit8 v3, v0, -0x1

    .line 184
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 185
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    .line 186
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    .line 187
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->c:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    .line 191
    :cond_9
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v5, v3, v0

    .line 192
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aput p2, v3, v0

    if-eq v6, v4, :cond_a

    .line 194
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v3, p2, v6

    aput v3, p2, v0

    .line 195
    aput v0, p2, v6

    goto :goto_4

    .line 197
    :cond_a
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    aput v3, p2, v0

    .line 198
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 200
    :goto_4
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 201
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 202
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 203
    iget-boolean p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-nez p2, :cond_b

    .line 205
    iget p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 207
    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v0, p2

    if-lt p1, v0, :cond_c

    .line 208
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 210
    :cond_c
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    array-length v0, p2

    if-lt p1, v0, :cond_d

    .line 211
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    .line 212
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    :cond_d
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 7

    .line 372
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-eq v0, v1, :cond_5

    .line 378
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v2, v4, :cond_5

    .line 379
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v4, v4, v0

    .line 380
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_4

    .line 381
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    if-ne v0, v2, :cond_1

    .line 382
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v2, v2, v0

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    goto :goto_1

    .line 384
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v4, v2, v0

    aput v4, v2, v3

    :goto_1
    if-eqz p2, :cond_2

    .line 388
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->b:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 390
    :cond_2
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 391
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    .line 392
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aput v1, p1, v0

    .line 393
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->i:Z

    if-eqz p1, :cond_3

    .line 395
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->h:I

    .line 397
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget p1, p1, v0

    return p1

    .line 400
    :cond_4
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v3, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public sizeInBytes()I
    .locals 1

    .line 608
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 634
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->g:I

    .line 635
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 636
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->a:I

    if-ge v2, v3, :cond_0

    .line 637
    const-string v3, " -> "

    .line 0
    invoke-static {v1, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-static {v1}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->f:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-static {v1}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->d:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public use(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .locals 5

    .line 349
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    .line 350
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 351
    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 352
    invoke-interface {p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    invoke-interface {p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 355
    invoke-interface {p1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v4

    mul-float v4, v4, v0

    .line 356
    invoke-virtual {p0, v3, v4, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
