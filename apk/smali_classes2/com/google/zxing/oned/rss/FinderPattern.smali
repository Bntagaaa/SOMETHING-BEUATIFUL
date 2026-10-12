.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lcom/google/zxing/ResultPoint;


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->b:[I

    .line 30
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, p3

    int-to-float p3, p5

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float p4, p4

    invoke-direct {p2, p4, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/google/zxing/ResultPoint;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    iput-object p3, p0, Lcom/google/zxing/oned/rss/FinderPattern;->c:[Lcom/google/zxing/ResultPoint;

    return-void
.end method


# virtual methods
.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->c:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getStartEnd()[I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->b:[I

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    return v0
.end method
