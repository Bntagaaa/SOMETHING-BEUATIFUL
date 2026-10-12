.class Lcom/google/android/material/slider/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/google/android/material/slider/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/a;)V
    .locals 0

    .line 2530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/a$b;->b:Lcom/google/android/material/slider/a;

    const/4 p1, -0x1

    .line 2531
    iput p1, p0, Lcom/google/android/material/slider/a$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/google/android/material/slider/a$b;->b:Lcom/google/android/material/slider/a;

    iget-object v0, v0, Lcom/google/android/material/slider/a;->g:Lcom/google/android/material/slider/a$c;

    .line 2539
    iget v1, p0, Lcom/google/android/material/slider/a$b;->a:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
