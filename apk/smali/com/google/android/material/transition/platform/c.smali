.class Lcom/google/android/material/transition/platform/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/material/transition/platform/c;->a:I

    .line 39
    iput p2, p0, Lcom/google/android/material/transition/platform/c;->b:I

    .line 40
    iput-boolean p3, p0, Lcom/google/android/material/transition/platform/c;->c:Z

    return-void
.end method
