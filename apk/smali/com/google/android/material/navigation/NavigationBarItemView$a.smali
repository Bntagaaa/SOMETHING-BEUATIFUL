.class Lcom/google/android/material/navigation/NavigationBarItemView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$a;->a:Lcom/google/android/material/navigation/NavigationBarItemView;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$a;->a:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 164
    iget-object p2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    .line 820
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p1, :cond_1

    .line 862
    sget-boolean p3, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 827
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method
