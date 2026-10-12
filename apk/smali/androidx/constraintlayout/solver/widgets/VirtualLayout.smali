.class public Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field protected mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->A:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->B:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->C:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    .line 34
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->G:Z

    .line 38
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->H:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->I:I

    .line 41
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->J:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .locals 2

    .line 72
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->C:I

    if-gtz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 74
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    .line 75
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    return-void

    .line 77
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    .line 78
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    return-void
.end method

.method public captureWidgets()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 143
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->I:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 139
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->H:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 98
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->B:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 100
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 96
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->A:I

    return v0
.end method

.method public measure(IIII)V
    .locals 0

    return-void
.end method

.method public measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 207
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->J:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 209
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->J:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 212
    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 214
    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->J:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 217
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 218
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 219
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    return-void
.end method

.method public measureChildren()Z
    .locals 9

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    .line 154
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 160
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    .line 161
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_2

    .line 166
    :cond_2
    instance-of v5, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_3

    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 171
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 173
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_4

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v8, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_5

    .line 185
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    if-ne v6, v7, :cond_6

    .line 188
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    :cond_6
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 191
    iput-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 193
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 194
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 195
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 196
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 197
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v4
.end method

.method public needSolverPass()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->G:Z

    return v0
.end method

.method public needsCallbackFromSolver(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->G:Z

    return-void
.end method

.method public setMeasure(II)V
    .locals 0

    .line 147
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->H:I

    .line 148
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->I:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 49
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->A:I

    .line 51
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->B:I

    .line 52
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->C:I

    .line 53
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 93
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->B:I

    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 0

    .line 63
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->D:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 68
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 89
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0

    .line 57
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->C:I

    .line 58
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->E:I

    .line 59
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->F:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 84
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->A:I

    return-void
.end method

.method public updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    return-void
.end method
