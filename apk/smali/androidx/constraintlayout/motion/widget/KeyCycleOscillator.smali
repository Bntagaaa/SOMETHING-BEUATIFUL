.class public abstract Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$g;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$f;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$i;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$c;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$q;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$p;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$o;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$n;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$m;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$l;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$k;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$j;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$e;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

.field public c:Ljava/lang/String;

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field protected mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

.field public mVariesBy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->d:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get(F)F
    .locals 2

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->getValues(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->a:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->getSlope(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setPoint(IIIFFF)V
    .locals 2

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->e:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 166
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 168
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->d:I

    return-void
.end method

.method public setPoint(IIIFFFLandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->e:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 148
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 150
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->d:I

    .line 151
    iput-object p7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->c:Ljava/lang/String;

    return-void
.end method

.method public setup(F)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$a;

    .line 177
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v2, v1, [D

    const/4 v3, 0x2

    .line 184
    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v1, v4, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 185
    new-instance v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->d:I

    .line 425
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v8, Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-direct {v8}, Landroidx/constraintlayout/motion/utils/Oscillator;-><init>()V

    iput-object v8, v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->a:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 461
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 428
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/utils/Oscillator;->setType(I)V

    .line 429
    new-array v7, v1, [F

    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->b:[F

    .line 430
    new-array v7, v1, [D

    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->c:[D

    .line 431
    new-array v7, v1, [F

    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->d:[F

    .line 432
    new-array v7, v1, [F

    iput-object v7, v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->e:[F

    .line 433
    new-array v1, v1, [F

    .line 185
    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    .line 188
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->d:F

    float-to-double v10, v9

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double v10, v10, v12

    aput-wide v10, v2, v7

    .line 189
    aget-object v6, v4, v7

    iget v11, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->b:F

    float-to-double v12, v11

    aput-wide v12, v6, v3

    .line 190
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->c:F

    float-to-double v12, v10

    aput-wide v12, v6, v5

    .line 191
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->a:I

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->setPoint(IIFFF)V

    add-int/2addr v7, v5

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->b:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->setup(F)V

    .line 195
    invoke-static {v3, v2, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->a:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->c:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    .line 73
    const-string v4, "["

    .line 0
    invoke-static {v0, v4}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    iget v4, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->b:F

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public variesByPath()Z
    .locals 2

    .line 51
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
