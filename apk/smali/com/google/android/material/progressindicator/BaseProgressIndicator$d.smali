.class Lcom/google/android/material/progressindicator/BaseProgressIndicator$d;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$d;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 824
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$d;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    iget-boolean v0, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->i:Z

    if-nez v0, :cond_0

    .line 70
    iget v0, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->j:I

    .line 828
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
