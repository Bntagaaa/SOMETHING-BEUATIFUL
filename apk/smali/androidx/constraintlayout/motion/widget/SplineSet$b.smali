.class Landroidx/constraintlayout/motion/widget/SplineSet$b;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Landroid/util/SparseArray;

.field public d:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    .line 260
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .locals 0

    .line 287
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 1

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .locals 3

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p2

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->d:[F

    invoke-virtual {v0, v1, v2, p2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 297
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->d:[F

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    return-void
.end method

.method public setup(I)V
    .locals 12

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v3

    .line 267
    new-array v4, v1, [D

    .line 268
    new-array v5, v3, [F

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->d:[F

    const/4 v5, 0x2

    .line 269
    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v3, v5, v6

    aput v1, v5, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 272
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 273
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    int-to-double v8, v6

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double v8, v8, v10

    .line 275
    aput-wide v8, v4, v5

    .line 276
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->d:[F

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v6, 0x0

    .line 277
    :goto_1
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/SplineSet$b;->d:[F

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 278
    aget-object v8, v3, v5

    aget v7, v7, v6

    float-to-double v9, v7

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p1, v4, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method
