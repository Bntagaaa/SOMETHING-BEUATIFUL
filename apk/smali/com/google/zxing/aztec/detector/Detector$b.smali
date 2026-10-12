.class final Lcom/google/zxing/aztec/detector/Detector$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    .line 612
    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    return-void
.end method


# virtual methods
.method public toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 3

    .line 607
    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0
.end method
