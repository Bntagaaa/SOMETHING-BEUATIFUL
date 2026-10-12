.class Lcom/google/android/material/textfield/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/n;->b:Lcom/google/android/material/textfield/i;

    iput-object p2, p0, Lcom/google/android/material/textfield/n;->a:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 455
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 71
    iget-object p1, p0, Lcom/google/android/material/textfield/n;->b:Lcom/google/android/material/textfield/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/material/textfield/i;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v3, 0x12c

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 71
    :cond_0
    iput-boolean v0, p1, Lcom/google/android/material/textfield/i;->l:Z

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/n;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v1}, Lcom/google/android/material/textfield/i;->d(Lcom/google/android/material/textfield/i;Landroid/widget/AutoCompleteTextView;)V

    .line 511
    iput-boolean p2, p1, Lcom/google/android/material/textfield/i;->l:Z

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/material/textfield/i;->n:J

    :cond_2
    return v0
.end method
