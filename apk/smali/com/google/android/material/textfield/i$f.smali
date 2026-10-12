.class Lcom/google/android/material/textfield/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/i$f;->a:Lcom/google/android/material/textfield/i;

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 557
    iget-object p1, p0, Lcom/google/android/material/textfield/i$f;->a:Lcom/google/android/material/textfield/i;

    iget-object v0, p1, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p1, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 559
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p1, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    iget-object p1, p1, Lcom/google/android/material/textfield/i;->k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/google/android/material/textfield/i$f;->a:Lcom/google/android/material/textfield/i;

    iget-object v0, p1, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 567
    iget-object p1, p1, Lcom/google/android/material/textfield/i;->k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method
