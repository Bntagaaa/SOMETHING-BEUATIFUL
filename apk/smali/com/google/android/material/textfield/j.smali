.class Lcom/google/android/material/textfield/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/i;

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    const/4 v0, 0x1

    .line 511
    iget-object v1, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/i;

    iput-boolean v0, v1, Lcom/google/android/material/textfield/i;->l:Z

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/material/textfield/i;->n:J

    const/4 v0, 0x0

    .line 71
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/i;->h(Z)V

    return-void
.end method
