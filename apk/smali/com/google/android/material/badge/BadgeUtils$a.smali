.class Lcom/google/android/material/badge/BadgeUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/Toolbar;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/badge/BadgeDrawable;

.field public final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/badge/BadgeUtils$a;->a:Landroidx/appcompat/widget/Toolbar;

    iput p3, p0, Lcom/google/android/material/badge/BadgeUtils$a;->b:I

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeUtils$a;->c:Lcom/google/android/material/badge/BadgeDrawable;

    iput-object p4, p0, Lcom/google/android/material/badge/BadgeUtils$a;->d:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeUtils$a;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lcom/google/android/material/badge/BadgeUtils$a;->b:I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_horizontal_offset:I

    .line 226
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 410
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeUtils$a;->c:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v5, v4, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    .line 410
    iget-object v6, v5, Lcom/google/android/material/badge/BadgeState;->a:Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iput-object v3, v6, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 410
    iget-object v3, v5, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    .line 743
    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeDrawable;->e()V

    .line 228
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_vertical_offset:I

    .line 229
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 410
    iget-object v3, v4, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget-object v5, v3, Lcom/google/android/material/badge/BadgeState;->a:Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iput-object v2, v5, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    .line 360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 410
    iget-object v2, v3, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v0, v2, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    .line 821
    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeDrawable;->e()V

    .line 135
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeUtils$a;->d:Landroid/widget/FrameLayout;

    invoke-static {v4, v1, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/material/badge/b;

    .line 147
    invoke-static {v1}, Landroidx/core/view/accessibility/d;->h(Landroidx/appcompat/view/menu/ActionMenuItemView;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/google/android/material/badge/b;-><init>(Landroid/view/View$AccessibilityDelegate;Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 145
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/google/android/material/badge/c;

    invoke-direct {v0, v4}, Lcom/google/android/material/badge/c;-><init>(Lcom/google/android/material/badge/BadgeDrawable;)V

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method
