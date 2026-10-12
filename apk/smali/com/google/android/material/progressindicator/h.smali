.class abstract Lcom/google/android/material/progressindicator/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field public b:Lcom/google/android/material/progressindicator/g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public abstract adjustCanvas(Landroid/graphics/Canvas;F)V
.end method

.method public abstract fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
.end method

.method public abstract getPreferredHeight()I
.end method

.method public abstract getPreferredWidth()I
.end method

.method public registerDrawable(Lcom/google/android/material/progressindicator/g;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    return-void
.end method
