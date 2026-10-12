.class Landroidx/constraintlayout/solver/widgets/analyzer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V
    .locals 5

    .line 186
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 189
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 190
    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_1

    .line 191
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 192
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v3, p0, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, v3, :cond_1

    .line 196
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-eqz v3, :cond_3

    .line 197
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 198
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 199
    invoke-static {v3, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    goto :goto_1

    .line 202
    :cond_3
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    if-nez v3, :cond_4

    .line 203
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v2, v3, p1

    .line 206
    :cond_4
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-static {v1, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    goto :goto_0

    .line 210
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 211
    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_6

    .line 212
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 213
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v3, p0, :cond_7

    goto :goto_2

    .line 216
    :cond_7
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, v3, :cond_6

    .line 217
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-eqz v3, :cond_8

    .line 218
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 219
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 220
    invoke-static {v4, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    goto :goto_3

    .line 223
    :cond_8
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    if-nez v3, :cond_9

    .line 224
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v2, v3, p1

    .line 227
    :cond_9
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-static {v1, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    goto :goto_2

    :cond_a
    :goto_4
    return-void
.end method

.method public static b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 9

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 90
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    if-eqz v1, :cond_0

    return-wide p1

    .line 97
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, p1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 100
    instance-of v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v7, :cond_2

    .line 101
    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 102
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p1

    invoke-static {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne p0, v1, :cond_4

    .line 112
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v1

    .line 113
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sub-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v3, p0

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_4
    return-wide v4
.end method

.method public static c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 9

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 58
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    if-eqz v1, :cond_0

    return-wide p1

    .line 65
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, p1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 68
    instance-of v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v7, :cond_2

    .line 69
    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 70
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p1

    invoke-static {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne p0, v1, :cond_4

    .line 80
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v1

    .line 81
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    add-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    iget-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v3, p0

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_4
    return-wide v4
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeWrapSize(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)J
    .locals 12

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 123
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v1, p2, :cond_2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 128
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-nez v1, :cond_2

    goto :goto_0

    .line 132
    :cond_1
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v1, :cond_2

    :goto_0
    return-wide v2

    :cond_2
    if-nez p2, :cond_3

    .line 137
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    :goto_1
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_2

    :cond_3
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_1

    :goto_2
    if-nez p2, :cond_4

    .line 138
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    :goto_3
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_4

    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_3

    .line 140
    :goto_4
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 141
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 143
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 146
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    .line 147
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v8

    sub-long/2addr v6, v4

    .line 151
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    neg-int v1, p1

    int-to-long v10, v1

    cmp-long v1, v6, v10

    if-ltz v1, :cond_5

    int-to-long v10, p1

    add-long/2addr v6, v10

    :cond_5
    neg-long v8, v8

    sub-long/2addr v8, v4

    .line 154
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v10, p1

    sub-long/2addr v8, v10

    cmp-long p1, v8, v10

    if-ltz p1, :cond_6

    sub-long/2addr v8, v10

    .line 158
    :cond_6
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result p1

    const/4 p2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_7

    long-to-float p2, v8

    div-float/2addr p2, p1

    long-to-float v2, v6

    sub-float v3, v1, p1

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    float-to-long v2, v2

    :cond_7
    long-to-float p2, v2

    mul-float v2, p2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-long v6, v2

    .line 164
    invoke-static {v1, p1, p2, v3}, L_COROUTINE/a;->a(FFFF)F

    move-result p1

    float-to-long p1, p1

    add-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 168
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long p1, p1

    add-long/2addr p1, v6

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_8
    if-eqz v1, :cond_9

    .line 171
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide p1

    .line 172
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    .line 173
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_9
    if-eqz p1, :cond_a

    .line 175
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide p1

    .line 176
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    neg-int v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    neg-long p1, p1

    .line 177
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 179
    :cond_a
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long p1, p1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:I

    int-to-long p1, p1

    sub-long/2addr v1, p1

    return-wide v1
.end method

.method public defineTerminalWidgets(ZZ)V
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz p1, :cond_0

    instance-of p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 237
    invoke-static {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 239
    instance-of p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 240
    invoke-static {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    :cond_1
    return-void
.end method
