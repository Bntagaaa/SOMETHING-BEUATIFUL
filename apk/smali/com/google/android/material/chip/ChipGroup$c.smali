.class Lcom/google/android/material/chip/ChipGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic b:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Lcom/google/android/material/chip/ChipGroup;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_1

    instance-of v1, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 517
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    .line 518
    invoke-virtual {p2, v1}, Landroid/view/View;->setId(I)V

    .line 60
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/internal/CheckableGroup;

    .line 520
    move-object v1, p2

    check-cast v1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 524
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_0

    instance-of v1, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/internal/CheckableGroup;

    .line 531
    move-object v1, p2

    check-cast v1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->removeCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 535
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
