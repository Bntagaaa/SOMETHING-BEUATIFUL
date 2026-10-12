.class final Lcom/google/zxing/oned/rss/expanded/decoders/n;
.super Lcom/google/zxing/oned/rss/expanded/decoders/p;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(I)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->d:Z

    .line 49
    iput p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->c:I

    .line 50
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(I)V

    .line 41
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->d:Z

    .line 43
    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/n;->c:I

    return-void
.end method
