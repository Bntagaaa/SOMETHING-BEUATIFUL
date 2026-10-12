.class Lcom/google/android/material/textfield/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/google/android/material/textfield/i$b;->a:Lcom/google/android/material/textfield/i;

    iget-object v0, p1, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/i;->h(Z)V

    .line 71
    iput-boolean p2, p1, Lcom/google/android/material/textfield/i;->l:Z

    :cond_0
    return-void
.end method
