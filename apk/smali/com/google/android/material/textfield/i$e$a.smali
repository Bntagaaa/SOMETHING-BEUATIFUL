.class Lcom/google/android/material/textfield/i$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/i$e;->onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Lcom/google/android/material/textfield/i$e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/i$e;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/i$e$a;->b:Lcom/google/android/material/textfield/i$e;

    iput-object p2, p0, Lcom/google/android/material/textfield/i$e$a;->a:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/android/material/textfield/i$e$a;->b:Lcom/google/android/material/textfield/i$e;

    iget-object v0, v0, Lcom/google/android/material/textfield/i$e;->a:Lcom/google/android/material/textfield/i;

    .line 71
    iget-object v0, v0, Lcom/google/android/material/textfield/i;->e:Landroid/text/TextWatcher;

    .line 184
    iget-object v1, p0, Lcom/google/android/material/textfield/i$e$a;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
