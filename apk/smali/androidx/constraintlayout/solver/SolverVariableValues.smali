.class public Landroidx/constraintlayout/solver/SolverVariableValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# instance fields
.field public a:I

.field public final b:[I

.field public c:[I

.field public d:[I

.field public e:[F

.field public f:[I

.field public g:[I

.field public h:I

.field public i:I

.field public final j:Landroidx/constraintlayout/solver/ArrayRow;

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 30
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 33
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    .line 34
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 36
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 38
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    .line 48
    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3

    .line 216
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    rem-int/lit8 p1, p1, 0x10

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 219
    aput p2, v0, p1

    goto :goto_1

    .line 224
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_1
    aput p2, p1, v1

    .line 232
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aput v2, p1, p2

    return-void
.end method

.method public add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 5

    const v0, 0x3a83126f    # 0.001f

    const v1, -0x457ced91    # -0.001f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    cmpg-float v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    return-void

    .line 417
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget v4, v3, v2

    add-float/2addr v4, p2

    aput v4, v3, v2

    cmpl-float p2, v4, v1

    if-lez p2, :cond_2

    cmpg-float p2, v4, v0

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 419
    aput p2, v3, v2

    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p1

    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aput p3, v0, p1

    .line 291
    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 292
    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aput v0, p3, p1

    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 294
    iget p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 295
    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    return-void
.end method

.method public clear()V
    .locals 5

    .line 180
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aput v3, v2, v0

    .line 189
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 195
    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public display()V
    .locals 5

    .line 134
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

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

    .line 143
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public divideByAmount(F)V
    .locals 5

    .line 481
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 482
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 484
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 485
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentSize()I
    .locals 1

    .line 54
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    .line 59
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1

    if-eq v2, v4, :cond_1

    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    .line 68
    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getVariableValue(I)F
    .locals 4

    .line 78
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 79
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v2, p1, :cond_0

    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget p1, p1, v1

    return p1

    .line 84
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 3

    .line 99
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 103
    rem-int/lit8 v0, p1, 0x10

    .line 104
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    return v1

    .line 108
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    .line 111
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aget v0, v2, v0

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    return v1

    .line 117
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public invert()V
    .locals 6

    .line 468
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 469
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 471
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    aput v4, v3, v1

    .line 472
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 8

    const v0, -0x457ced91    # -0.001f

    const/4 v1, 0x1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 335
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    .line 338
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {p0, v2, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->b(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    .line 340
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 341
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 345
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aput p2, p1, v0

    return-void

    .line 347
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    if-lt v0, v1, :cond_4

    mul-int/lit8 v1, v1, 0x2

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    .line 202
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    .line 205
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    :goto_0
    if-ge v0, v1, :cond_3

    .line 206
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aput v3, v4, v0

    .line 207
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    .line 350
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 352
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1
    if-ge v4, v0, :cond_8

    .line 354
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v6, v6, v1

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_5

    .line 355
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aput p2, p1, v1

    return-void

    :cond_5
    if-ge v6, v7, :cond_6

    move v5, v1

    .line 361
    :cond_6
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v1, v6, v1

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 299
    :cond_8
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->a:I

    if-ge v2, v0, :cond_a

    .line 300
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, -0x1

    .line 309
    :goto_3
    invoke-virtual {p0, v2, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->b(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    if-eq v5, v3, :cond_b

    .line 311
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aput v5, p2, v2

    .line 312
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v0, p2, v5

    aput v0, p2, v2

    .line 313
    aput v2, p2, v5

    goto :goto_4

    .line 315
    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aput v3, p2, v2

    .line 316
    iget p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    if-lez p2, :cond_c

    .line 317
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    aput v0, p2, v2

    .line 318
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    goto :goto_4

    .line 320
    :cond_c
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aput v3, p2, v2

    .line 323
    :goto_4
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget p2, p2, v2

    if-eq p2, v3, :cond_d

    .line 324
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aput v2, v0, p2

    .line 326
    :cond_d
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    return-void
.end method

.method public remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 7

    .line 381
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 260
    :cond_0
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    rem-int/lit8 v3, v2, 0x10

    .line 261
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->b:[I

    aget v5, v4, v3

    if-ne v5, v1, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v6, v6, v5

    if-ne v6, v2, :cond_2

    .line 271
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aget v6, v2, v5

    aput v6, v4, v3

    .line 272
    aput v1, v2, v5

    goto :goto_1

    .line 274
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->c:[I

    aget v4, v3, v5

    if-eq v4, v1, :cond_3

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v6, v6, v4

    if-eq v6, v2, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    if-eq v4, v1, :cond_4

    .line 278
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v6, v6, v4

    if-ne v6, v2, :cond_4

    .line 279
    aget v2, v3, v4

    aput v2, v3, v5

    .line 280
    aput v1, v3, v4

    .line 386
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget v2, v2, v0

    .line 387
    iget v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    if-ne v3, v0, :cond_5

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v3, v3, v0

    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->i:I

    .line 390
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aput v1, v3, v0

    .line 391
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_6

    .line 392
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v6, v5, v0

    aput v6, v5, v4

    .line 394
    :cond_6
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v4, v4, v0

    if-eq v4, v1, :cond_7

    .line 395
    aget v0, v3, v0

    aput v0, v3, v4

    .line 397
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    .line 398
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-eqz p2, :cond_8

    .line 400
    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->j:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_8
    return v2
.end method

.method public sizeInBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 151
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v3

    .line 157
    const-string v4, "[p: "

    .line 0
    invoke-static {v0, v4}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    iget-object v8, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->f:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 0
    :cond_1
    invoke-static {v0, v5}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    const-string v4, ", n: "

    .line 0
    invoke-static {v0, v4}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_2

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->g:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 0
    :cond_2
    invoke-static {v0, v5}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_2
    const-string v3, "]"

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    :cond_3
    const-string v1, " }"

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .locals 7

    .line 427
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    .line 428
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 439
    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    check-cast p1, Landroidx/constraintlayout/solver/SolverVariableValues;

    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->d:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 456
    iget-object v5, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->e:[F

    aget v5, v5, v3

    .line 457
    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v6, v4

    mul-float v5, v5, v0

    .line 458
    invoke-virtual {p0, v4, v5, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
