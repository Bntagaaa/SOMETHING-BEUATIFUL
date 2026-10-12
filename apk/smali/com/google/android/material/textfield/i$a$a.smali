.class Lcom/google/android/material/textfield/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/i$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Lcom/google/android/material/textfield/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i$a;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/i$a$a;->b:Lcom/google/android/material/textfield/i$a;

    iput-object p2, p0, Lcom/google/android/material/textfield/i$a$a;->a:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/android/material/textfield/i$a$a;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/google/android/material/textfield/i$a$a;->b:Lcom/google/android/material/textfield/i$a;

    iget-object v2, v1, Lcom/google/android/material/textfield/i$a;->a:Lcom/google/android/material/textfield/i;

    .line 71
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/i;->h(Z)V

    .line 96
    iget-object v1, v1, Lcom/google/android/material/textfield/i$a;->a:Lcom/google/android/material/textfield/i;

    .line 71
    iput-boolean v0, v1, Lcom/google/android/material/textfield/i;->l:Z

    return-void
.end method
