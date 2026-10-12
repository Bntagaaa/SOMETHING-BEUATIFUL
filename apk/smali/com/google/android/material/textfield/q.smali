.class Lcom/google/android/material/textfield/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lcom/google/android/material/textfield/s;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/s;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/android/material/textfield/q;->e:Lcom/google/android/material/textfield/s;

    iput p2, p0, Lcom/google/android/material/textfield/q;->a:I

    iput-object p3, p0, Lcom/google/android/material/textfield/q;->b:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/q;->c:I

    iput-object p5, p0, Lcom/google/android/material/textfield/q;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 65
    iget p1, p0, Lcom/google/android/material/textfield/q;->a:I

    iget-object v0, p0, Lcom/google/android/material/textfield/q;->e:Lcom/google/android/material/textfield/s;

    iput p1, v0, Lcom/google/android/material/textfield/s;->h:I

    const/4 p1, 0x0

    .line 65
    iput-object p1, v0, Lcom/google/android/material/textfield/s;->f:Landroid/animation/AnimatorSet;

    .line 242
    iget-object v1, p0, Lcom/google/android/material/textfield/q;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 243
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget v1, p0, Lcom/google/android/material/textfield/q;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v0, v0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/q;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/google/android/material/textfield/q;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
