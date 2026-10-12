.class Lcom/google/android/material/progressindicator/BaseProgressIndicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$a;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 781
    sget v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->SHOW_NONE:I

    .line 70
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$a;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 213
    iget v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->f:I

    if-lez v1, :cond_0

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->g:J

    :cond_0
    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
