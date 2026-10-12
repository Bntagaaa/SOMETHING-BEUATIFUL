.class Lcom/google/android/material/timepicker/a$b;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    sget p1, Lcom/google/android/material/timepicker/a;->a:I

    .line 52
    throw v0

    .line 175
    :cond_0
    sget p1, Lcom/google/android/material/timepicker/a;->a:I

    .line 52
    throw v0
.end method
