.class Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;
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

    .line 806
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 p1, 0x0

    .line 810
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 70
    iget p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:I

    .line 70
    iget-boolean v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c:Z

    .line 811
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    return-void
.end method
