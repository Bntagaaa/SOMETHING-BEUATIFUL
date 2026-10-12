.class Lcom/google/android/material/bottomsheet/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/d;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/d;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 299
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 303
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$b;

    .line 67
    iget-object v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->h:Landroid/widget/FrameLayout;

    .line 303
    invoke-direct {v0, v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$b;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    .line 67
    iput-object v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 67
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 304
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    :cond_1
    return-object p2
.end method
