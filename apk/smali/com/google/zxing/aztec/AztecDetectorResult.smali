.class public final Lcom/google/zxing/aztec/AztecDetectorResult;
.super Lcom/google/zxing/common/DetectorResult;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    .line 35
    iput-boolean p3, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->c:Z

    .line 36
    iput p4, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->d:I

    .line 37
    iput p5, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->e:I

    return-void
.end method


# virtual methods
.method public getNbDatablocks()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->d:I

    return v0
.end method

.method public getNbLayers()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->e:I

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->c:Z

    return v0
.end method
