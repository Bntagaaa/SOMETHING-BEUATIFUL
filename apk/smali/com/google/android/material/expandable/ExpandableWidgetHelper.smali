.class public final Lcom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/expandable/ExpandableWidget;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    .line 37
    iput v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->c:I

    .line 41
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->c:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    .line 72
    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->c:I

    .line 74
    iget-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v1, "expanded"

    iget-boolean v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v1, "expandedComponentIdHint"

    iget v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setExpanded(Z)Z
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    if-eq v0, p1, :cond_1

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->b:Z

    .line 91
    iget-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 81
    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->c:I

    return-void
.end method
