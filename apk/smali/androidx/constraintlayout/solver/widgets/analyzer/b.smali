.class Landroidx/constraintlayout/solver/widgets/analyzer/b;
.super Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.source "SourceFile"


# instance fields
.field public h:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 25
    instance-of p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz p1, :cond_0

    .line 26
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;->b:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;

    return-void

    .line 28
    :cond_0
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;->c:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$a;

    return-void
.end method


# virtual methods
.method public resolve(I)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 37
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 39
    invoke-interface {v0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
