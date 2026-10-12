.class Lcom/google/android/material/bottomsheet/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 325
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->l:Z

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101035b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->k:Z

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    iput-boolean v2, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->l:Z

    .line 374
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->k:Z

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    :cond_1
    return-void
.end method
