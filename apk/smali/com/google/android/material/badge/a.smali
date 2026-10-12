.class Lcom/google/android/material/badge/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Lcom/google/android/material/badge/BadgeDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/badge/a;->c:Lcom/google/android/material/badge/BadgeDrawable;

    iput-object p2, p0, Lcom/google/android/material/badge/a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/badge/a;->b:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/google/android/material/badge/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/badge/a;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/material/badge/a;->c:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method
