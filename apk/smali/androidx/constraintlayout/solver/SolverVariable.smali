.class public Landroidx/constraintlayout/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_CENTERING:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x8

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final c:[F

.field public computedValue:F

.field public final d:[F

.field public e:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public f:[Landroidx/constraintlayout/solver/ArrayRow;

.field public g:I

.field public id:I

.field public inGoal:Z

.field public isFinalValue:Z

.field public strength:I

.field public usageInRowCount:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 53
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 54
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 57
    iput-boolean p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    const/16 v0, 0x9

    .line 60
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->c:[F

    .line 61
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->d:[F

    const/16 v0, 0x10

    .line 65
    new-array v0, v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 66
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    .line 67
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)V
    .locals 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 54
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    const/16 v1, 0x9

    .line 60
    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->c:[F

    .line 61
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->d:[F

    const/16 v1, 0x10

    .line 65
    new-array v1, v1, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 66
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 122
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3

    const/4 v0, 0x0

    .line 175
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 181
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 183
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 184
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 4

    .line 192
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 194
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    .line 196
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    .line 198
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    .line 232
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    .line 233
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, -0x1

    .line 234
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 235
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->b:I

    const/4 v2, 0x0

    .line 236
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 237
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    .line 241
    iget v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 243
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    .line 247
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 248
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->d:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V
    .locals 3

    .line 221
    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/4 p2, 0x1

    .line 222
    iput-boolean p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    .line 223
    iget p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 225
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->e:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 4

    .line 212
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 214
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->f:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->g:I

    return-void
.end method
