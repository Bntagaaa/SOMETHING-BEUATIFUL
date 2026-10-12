.class public final Lcom/google/zxing/client/android/result/ResultButtonListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lcom/google/zxing/client/android/result/ResultHandler;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/result/ResultHandler;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/zxing/client/android/result/ResultButtonListener;->a:Lcom/google/zxing/client/android/result/ResultHandler;

    .line 34
    iput p2, p0, Lcom/google/zxing/client/android/result/ResultButtonListener;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/google/zxing/client/android/result/ResultButtonListener;->a:Lcom/google/zxing/client/android/result/ResultHandler;

    iget v0, p0, Lcom/google/zxing/client/android/result/ResultButtonListener;->b:I

    invoke-virtual {p1, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->handleButtonPress(I)V

    return-void
.end method
