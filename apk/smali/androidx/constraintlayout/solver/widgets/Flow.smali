.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$a;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public S:F

.field public T:F

.field public U:F

.field public V:F

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public final d0:Ljava/util/ArrayList;

.field public e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public g0:[I

.field public h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public i0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->M:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->N:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->O:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->P:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->S:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->T:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->U:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->V:F

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    const/4 v2, 0x2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->d0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 11

    .line 1215
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 1217
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1218
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->d0:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    if-eq v1, v3, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_c

    .line 1119
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v1, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v1, 0x0

    .line 1125
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    if-ge v1, v2, :cond_3

    .line 1126
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 1127
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1130
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    aget v2, v1, v0

    .line 1131
    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v5, v2, :cond_a

    if-eqz p1, :cond_4

    sub-int v7, v2, v5

    sub-int/2addr v7, v3

    goto :goto_3

    :cond_4
    move v7, v5

    .line 1139
    :goto_3
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v8, v7

    if-eqz v7, :cond_9

    .line 1140
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_5

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    .line 1144
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1145
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1146
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_6
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_7

    .line 1149
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_7
    if-lez v5, :cond_8

    .line 1152
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1153
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_8
    move-object v4, v7

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v1, :cond_10

    .line 1158
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    if-eqz v5, :cond_f

    .line 1159
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_b

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    .line 1163
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1164
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1165
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_c
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_d

    .line 1168
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_d
    if-lez p1, :cond_e

    .line 1171
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1172
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_e
    move-object v4, v5

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_7
    if-ge p1, v2, :cond_1a

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_16

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    .line 1180
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    if-ne v7, v3, :cond_11

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 1183
    :cond_11
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v8, v7

    if-lt v5, v8, :cond_12

    goto :goto_9

    .line 1186
    :cond_12
    aget-object v5, v7, v5

    if-eqz v5, :cond_15

    .line 1187
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_13

    goto :goto_9

    .line 1190
    :cond_13
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, p1

    .line 1191
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_14

    .line 1193
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1194
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_14
    if-eq v5, v8, :cond_15

    .line 1197
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1198
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_15
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 1220
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_1a

    .line 1222
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$a;

    add-int/lit8 v6, v1, -0x1

    if-ne v4, v6, :cond_18

    const/4 v6, 0x1

    goto :goto_b

    :cond_18
    const/4 v6, 0x0

    .line 1223
    :goto_b
    invoke-virtual {v5, p1, v4, v6}, Landroidx/constraintlayout/solver/widgets/Flow$a;->createConstraints(ZIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1227
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 1228
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/Flow$a;

    .line 1229
    invoke-virtual {v1, p1, v0, v3}, Landroidx/constraintlayout/solver/widgets/Flow$a;->createConstraints(ZIZ)V

    .line 1237
    :cond_1a
    :goto_c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 88
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 89
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    .line 90
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->M:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->M:I

    .line 91
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->N:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->N:I

    .line 92
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->O:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->O:I

    .line 93
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->P:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->P:I

    .line 95
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    .line 96
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    .line 97
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->S:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->S:F

    .line 98
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->T:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->T:F

    .line 99
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->U:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->U:F

    .line 100
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->V:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->V:F

    .line 102
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    .line 103
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    .line 105
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    .line 106
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    .line 107
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    .line 109
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    .line 111
    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    .line 203
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 206
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int v6, v0

    .line 207
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    if-eq v6, p2, :cond_2

    .line 208
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return v6

    :cond_3
    move-object v2, p1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_4

    .line 212
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v1, p1, :cond_6

    .line 214
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v2, p1

    .line 217
    :cond_6
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1
.end method

.method public final e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    .line 181
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 184
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int v4, v0

    .line 185
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    if-eq v4, p2, :cond_2

    .line 186
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return v4

    :cond_3
    move-object v2, p1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_4

    .line 190
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v1, p1, :cond_6

    .line 192
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v2, p1

    .line 195
    :cond_6
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1
.end method

.method public measure(IIII)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 225
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v12, 0x0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {v1, v12, v12}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->setMeasure(II)V

    .line 227
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void

    .line 233
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v13

    .line 234
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v14

    .line 235
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v15

    .line 236
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v16

    const/4 v0, 0x2

    .line 238
    new-array v2, v0, [I

    sub-int v3, v9, v13

    sub-int/2addr v3, v14

    .line 240
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sub-int v3, v11, v15

    sub-int v3, v3, v16

    :cond_1
    move v7, v3

    const/4 v3, -0x1

    if-nez v4, :cond_3

    .line 245
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    if-ne v4, v3, :cond_2

    .line 246
    iput v12, v1, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 248
    :cond_2
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    if-ne v4, v3, :cond_5

    .line 249
    iput v12, v1, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    goto :goto_0

    .line 252
    :cond_3
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    if-ne v4, v3, :cond_4

    .line 253
    iput v12, v1, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    .line 255
    :cond_4
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    if-ne v4, v3, :cond_5

    .line 256
    iput v12, v1, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    .line 260
    :cond_5
    :goto_0
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v28, 0x0

    .line 263
    :goto_1
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/16 v0, 0x8

    if-ge v4, v12, :cond_7

    .line 264
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v4

    .line 265
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-ne v12, v0, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    if-lez v6, :cond_a

    sub-int/2addr v12, v6

    .line 271
    new-array v3, v12, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 273
    :goto_2
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v4, v12, :cond_9

    .line 274
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v4

    .line 275
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v0, :cond_8

    .line 276
    aput-object v12, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    move v0, v6

    :goto_3
    move-object v12, v3

    goto :goto_4

    :cond_a
    move v0, v12

    goto :goto_3

    .line 282
    :goto_4
    iput-object v12, v1, Landroidx/constraintlayout/solver/widgets/Flow;->h0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 283
    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->i0:I

    .line 284
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->d0:Ljava/util/ArrayList;

    if-eqz v3, :cond_4d

    const/4 v5, 0x1

    if-eq v3, v5, :cond_32

    const/4 v5, 0x2

    if-eq v3, v5, :cond_b

    move-object/from16 v30, v2

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    :goto_5
    const/16 v29, 0x1

    goto/16 :goto_30

    .line 286
    :cond_b
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    if-nez v3, :cond_11

    .line 970
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    if-gtz v4, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    move-object/from16 v19, v2

    if-ge v4, v0, :cond_f

    if-lez v4, :cond_c

    .line 977
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int/2addr v5, v2

    .line 979
    :cond_c
    aget-object v2, v12, v4

    if-nez v2, :cond_d

    goto :goto_7

    .line 983
    :cond_d
    invoke-virtual {v1, v2, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v2

    add-int/2addr v2, v5

    if-le v2, v7, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move v5, v2

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_6

    :cond_f
    :goto_8
    move v4, v6

    :goto_9
    const/4 v2, 0x0

    goto :goto_d

    :cond_10
    move-object/from16 v19, v2

    goto :goto_9

    :cond_11
    move-object/from16 v19, v2

    .line 991
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    if-gtz v2, :cond_16

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v2, v0, :cond_15

    if-lez v2, :cond_12

    .line 998
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int/2addr v4, v6

    .line 1000
    :cond_12
    aget-object v6, v12, v2

    if-nez v6, :cond_13

    goto :goto_b

    .line 1004
    :cond_13
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v6

    add-int/2addr v6, v4

    if-le v6, v7, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    :goto_c
    move v2, v5

    :cond_16
    const/4 v4, 0x0

    .line 1013
    :goto_d
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    if-nez v5, :cond_17

    const/4 v5, 0x2

    .line 1014
    new-array v5, v5, [I

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    :cond_17
    if-nez v2, :cond_18

    const/4 v5, 0x1

    if-eq v3, v5, :cond_19

    :cond_18
    if-nez v4, :cond_1a

    if-nez v3, :cond_1a

    :cond_19
    const/4 v5, 0x1

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_31

    if-nez v3, :cond_1b

    int-to-float v2, v0

    int-to-float v6, v4

    div-float/2addr v2, v6

    move v6, v4

    move/from16 v17, v5

    float-to-double v4, v2

    .line 1027
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    move v4, v6

    goto :goto_f

    :cond_1b
    move/from16 v17, v5

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 1029
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1032
    :goto_f
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_1c

    array-length v6, v5

    if-ge v6, v4, :cond_1d

    :cond_1c
    const/4 v6, 0x0

    goto :goto_10

    :cond_1d
    const/4 v6, 0x0

    .line 1035
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 1033
    :goto_10
    new-array v5, v4, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1037
    :goto_11
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_1f

    array-length v6, v5

    if-ge v6, v2, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v6, 0x0

    .line 1040
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 1038
    :cond_1f
    :goto_12
    new-array v5, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_13
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_28

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v2, :cond_27

    mul-int v20, v6, v4

    add-int v20, v20, v5

    move/from16 v21, v0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_20

    mul-int v0, v5, v2

    add-int v20, v0, v6

    :cond_20
    move/from16 v0, v20

    move/from16 v20, v3

    .line 1049
    array-length v3, v12

    if-lt v0, v3, :cond_21

    :goto_16
    move/from16 v22, v5

    goto :goto_17

    .line 1052
    :cond_21
    aget-object v0, v12, v0

    if-nez v0, :cond_22

    goto :goto_16

    .line 1056
    :cond_22
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    move/from16 v22, v5

    .line 1057
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v22

    if-eqz v5, :cond_23

    .line 1058
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-ge v5, v3, :cond_24

    .line 1059
    :cond_23
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v0, v3, v22

    .line 1061
    :cond_24
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 1062
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v6

    if-eqz v5, :cond_25

    .line 1063
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-ge v5, v3, :cond_26

    .line 1064
    :cond_25
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v0, v3, v6

    :cond_26
    :goto_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v20

    move/from16 v0, v21

    move/from16 v5, v22

    goto :goto_15

    :cond_27
    move/from16 v21, v0

    move/from16 v20, v3

    move/from16 v22, v5

    add-int/lit8 v5, v22, 0x1

    goto :goto_14

    :cond_28
    move/from16 v21, v0

    move/from16 v20, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_18
    if-ge v0, v4, :cond_2b

    .line 1071
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->f0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2a

    if-lez v0, :cond_29

    .line 1074
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int/2addr v3, v6

    .line 1076
    :cond_29
    invoke-virtual {v1, v5, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v5

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_19
    if-ge v0, v2, :cond_2e

    .line 1081
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->e0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v0

    move/from16 v22, v0

    if-eqz v6, :cond_2d

    if-lez v0, :cond_2c

    .line 1084
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int/2addr v5, v0

    .line 1086
    :cond_2c
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    add-int/2addr v0, v5

    move v5, v0

    :cond_2d
    add-int/lit8 v0, v22, 0x1

    goto :goto_19

    .line 1089
    :cond_2e
    aput v3, v19, v28

    const/4 v0, 0x1

    .line 1090
    aput v5, v19, v0

    if-nez v20, :cond_30

    if-le v3, v7, :cond_2f

    if-le v4, v0, :cond_2f

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    move/from16 v5, v17

    goto :goto_1b

    :cond_2f
    const/4 v5, 0x1

    goto :goto_1b

    :cond_30
    if-le v5, v7, :cond_2f

    if-le v2, v0, :cond_2f

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :goto_1b
    move/from16 v3, v20

    move/from16 v0, v21

    goto/16 :goto_e

    :cond_31
    move v6, v4

    const/4 v0, 0x1

    .line 1114
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->g0:[I

    aput v6, v3, v28

    .line 1115
    aput v2, v3, v0

    :goto_1c
    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v30, v19

    goto/16 :goto_5

    :cond_32
    move/from16 v21, v0

    move-object/from16 v19, v2

    const/4 v0, 0x1

    .line 290
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    if-nez v21, :cond_33

    goto :goto_1c

    .line 780
    :cond_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/16 v18, 0x1

    .line 781
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$a;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v4

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v5

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v6

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v12

    move/from16 v32, v13

    move-object/from16 v13, v17

    move-object/from16 v30, v19

    move/from16 v12, v21

    const/16 v29, 0x1

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$a;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 782
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v3, v12, :cond_3a

    .line 789
    aget-object v6, v31, v3

    .line 790
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v17

    move/from16 v18, v2

    .line 791
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move/from16 v19, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_34

    add-int/lit8 v4, v4, 0x1

    :cond_34
    move/from16 v20, v4

    if-eq v5, v7, :cond_35

    .line 794
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int/2addr v2, v5

    add-int v2, v2, v17

    if-le v2, v7, :cond_36

    .line 331
    :cond_35
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1e

    :cond_36
    const/4 v2, 0x0

    :goto_1e
    if-nez v2, :cond_37

    if-lez v19, :cond_37

    .line 795
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    if-lez v3, :cond_37

    rem-int v3, v19, v3

    if-nez v3, :cond_37

    const/4 v2, 0x1

    :cond_37
    if-eqz v2, :cond_39

    .line 800
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$a;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v6

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v14, v19

    move-object v15, v2

    move/from16 v2, v18

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$a;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 801
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/solver/widgets/Flow$a;->setStartIndex(I)V

    .line 802
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    move/from16 v5, v17

    goto :goto_1f

    :cond_39
    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v2, v18

    move/from16 v14, v19

    move-object v15, v6

    if-lez v14, :cond_38

    .line 805
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int v3, v3, v17

    add-int/2addr v3, v5

    move v5, v3

    .line 810
    :goto_1f
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/solver/widgets/Flow$a;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v3, v14, 0x1

    move/from16 v4, v20

    move/from16 v14, v33

    move/from16 v15, v34

    goto :goto_1d

    :cond_3a
    move/from16 v33, v14

    move/from16 v34, v15

    goto :goto_23

    :cond_3b
    move/from16 v33, v14

    move/from16 v34, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v12, :cond_42

    .line 815
    aget-object v15, v31, v14

    .line 816
    invoke-virtual {v1, v15, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v17

    .line 817
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3c

    add-int/lit8 v3, v3, 0x1

    :cond_3c
    move/from16 v18, v3

    if-eq v4, v7, :cond_3d

    .line 820
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int/2addr v3, v4

    add-int v3, v3, v17

    if-le v3, v7, :cond_3e

    .line 331
    :cond_3d
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_3e

    const/4 v5, 0x1

    goto :goto_21

    :cond_3e
    const/4 v5, 0x0

    :goto_21
    if-nez v5, :cond_3f

    if-lez v14, :cond_3f

    .line 821
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    if-lez v3, :cond_3f

    rem-int v3, v14, v3

    if-nez v3, :cond_3f

    const/4 v5, 0x1

    :cond_3f
    if-eqz v5, :cond_41

    .line 826
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$a;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$a;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 827
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/solver/widgets/Flow$a;->setStartIndex(I)V

    .line 828
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    move/from16 v4, v17

    goto :goto_22

    :cond_41
    if-lez v14, :cond_40

    .line 831
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int v3, v3, v17

    add-int/2addr v3, v4

    move v4, v3

    .line 836
    :goto_22
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/solver/widgets/Flow$a;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v18

    goto :goto_20

    :cond_42
    move v4, v3

    .line 839
    :goto_23
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 841
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 842
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 843
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 844
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 846
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v14

    .line 847
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v15

    .line 848
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v17

    .line 849
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v18

    move/from16 v19, v2

    .line 855
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object/from16 v20, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_44

    .line 856
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    if-ne v2, v3, :cond_43

    goto :goto_24

    :cond_43
    const/4 v2, 0x0

    goto :goto_25

    :cond_44
    :goto_24
    const/4 v2, 0x1

    :goto_25
    if-lez v4, :cond_46

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v0, :cond_46

    .line 861
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Flow$a;

    if-nez v19, :cond_45

    .line 863
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getWidth()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow$a;->measureMatchConstraints(I)V

    goto :goto_27

    .line 865
    :cond_45
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getHeight()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow$a;->measureMatchConstraints(I)V

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_46
    move-object/from16 v21, v6

    move-object/from16 v22, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v17

    move/from16 v26, v18

    move-object/from16 v3, v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v20, v5

    const/4 v5, 0x0

    :goto_28
    if-ge v2, v0, :cond_4c

    .line 871
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/Flow$a;

    if-nez v19, :cond_49

    add-int/lit8 v12, v0, -0x1

    if-ge v2, v12, :cond_47

    add-int/lit8 v12, v2, 0x1

    .line 874
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/Flow$a;

    .line 331
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 875
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/16 v26, 0x0

    :goto_29
    move-object/from16 v22, v12

    goto :goto_2a

    .line 878
    :cond_47
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 879
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v14

    move/from16 v26, v14

    goto :goto_29

    .line 331
    :goto_2a
    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 881
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v6

    move/from16 v27, v7

    move/from16 v18, v19

    move-object/from16 v19, v3

    .line 882
    invoke-virtual/range {v17 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow$a;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 886
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 887
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    if-lez v2, :cond_48

    .line 889
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    add-int/2addr v5, v4

    :cond_48
    move v4, v3

    move-object/from16 v20, v12

    move-object/from16 v3, v19

    const/16 v24, 0x0

    goto :goto_2d

    :cond_49
    move/from16 v18, v19

    move-object/from16 v19, v3

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4a

    add-int/lit8 v3, v2, 0x1

    .line 893
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Flow$a;

    .line 331
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 894
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/16 v25, 0x0

    :goto_2b
    move-object/from16 v21, v3

    goto :goto_2c

    .line 897
    :cond_4a
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 898
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v12

    move/from16 v25, v12

    goto :goto_2b

    .line 331
    :goto_2c
    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/Flow$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 900
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v6

    move/from16 v27, v7

    .line 901
    invoke-virtual/range {v17 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow$a;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 905
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 906
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v2, :cond_4b

    .line 908
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    add-int/2addr v4, v6

    :cond_4b
    const/16 v23, 0x0

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v18

    goto/16 :goto_28

    .line 912
    :cond_4c
    aput v4, v30, v28

    .line 913
    aput v5, v30, v29

    goto/16 :goto_30

    :cond_4d
    move-object/from16 v30, v2

    move-object/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    const/16 v29, 0x1

    move v12, v0

    move-object v13, v4

    .line 294
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    if-nez v12, :cond_4e

    goto :goto_30

    .line 933
    :cond_4e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4f

    .line 934
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$a;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$a;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 935
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4f
    const/4 v0, 0x0

    .line 937
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/constraintlayout/solver/widgets/Flow$a;

    .line 938
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/Flow$a;->clear()V

    .line 939
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 940
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v23

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v25

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v26

    move-object/from16 v19, v0

    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v27, v7

    .line 939
    invoke-virtual/range {v17 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow$a;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    move-object/from16 v0, v17

    :goto_2e
    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v12, :cond_50

    .line 944
    aget-object v3, v31, v2

    .line 945
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/Flow$a;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 948
    :cond_50
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getWidth()I

    move-result v2

    const/16 v28, 0x0

    aput v2, v30, v28

    .line 949
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$a;->getHeight()I

    move-result v0

    aput v0, v30, v29

    .line 299
    :goto_30
    aget v0, v30, v28

    add-int v0, v0, v32

    add-int v0, v0, v33

    .line 300
    aget v2, v30, v29

    add-int v2, v2, v34

    add-int v2, v2, v16

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v8, v4, :cond_51

    move v0, v9

    goto :goto_31

    :cond_51
    if-ne v8, v3, :cond_52

    .line 308
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_31

    :cond_52
    if-nez v8, :cond_53

    goto :goto_31

    :cond_53
    const/4 v0, 0x0

    :goto_31
    if-ne v10, v4, :cond_54

    move v2, v11

    goto :goto_32

    :cond_54
    if-ne v10, v3, :cond_55

    .line 316
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_32

    :cond_55
    if-nez v10, :cond_56

    goto :goto_32

    :cond_56
    const/4 v2, 0x0

    .line 321
    :goto_32
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->setMeasure(II)V

    .line 322
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 323
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 324
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-lez v0, :cond_57

    const/4 v12, 0x1

    goto :goto_33

    :cond_57
    const/4 v12, 0x0

    :goto_33
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0

    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->S:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0

    .line 122
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->M:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0

    .line 148
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->T:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0

    .line 124
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->N:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0

    .line 155
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Y:I

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0

    .line 139
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Q:F

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    .line 166
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->W:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0

    .line 131
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->K:I

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0

    .line 150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->U:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0

    .line 126
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->O:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->V:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0

    .line 128
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->P:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0

    .line 170
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->b0:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 119
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->c0:I

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0

    .line 159
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->Z:I

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->R:F

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0

    .line 168
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->X:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0

    .line 135
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->L:I

    return-void
.end method

.method public setWrapMode(I)V
    .locals 0

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->a0:I

    return-void
.end method
