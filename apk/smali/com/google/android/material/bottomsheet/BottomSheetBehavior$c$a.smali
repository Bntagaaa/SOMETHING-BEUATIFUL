.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;)V
    .locals 0

    .line 1857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1852
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Z

    .line 1861
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    .line 1862
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a(I)V

    return-void

    .line 1863
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1852
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    .line 1864
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    :cond_1
    return-void
.end method
