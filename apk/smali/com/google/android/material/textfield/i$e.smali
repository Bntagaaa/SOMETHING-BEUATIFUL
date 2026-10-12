.class Lcom/google/android/material/textfield/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


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

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/i$e;->a:Lcom/google/android/material/textfield/i;

    return-void
.end method


# virtual methods
.method public onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 6
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x3

    .line 178
    iget-object v2, p0, Lcom/google/android/material/textfield/i$e;->a:Lcom/google/android/material/textfield/i;

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 180
    new-instance v3, Lcom/google/android/material/textfield/i$e$a;

    invoke-direct {v3, p0, v0}, Lcom/google/android/material/textfield/i$e$a;-><init>(Lcom/google/android/material/textfield/i$e;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    .line 71
    iget-object v4, v2, Lcom/google/android/material/textfield/i;->f:Landroid/view/View$OnFocusChangeListener;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 188
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_1
    if-ne p2, v1, :cond_2

    .line 71
    iget-object p2, v2, Lcom/google/android/material/textfield/i;->j:Landroid/view/View$OnAttachStateChangeListener;

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 566
    iget-object p1, v2, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_2

    .line 567
    iget-object p2, v2, Lcom/google/android/material/textfield/i;->k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {p1, p2}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    :cond_2
    return-void
.end method
