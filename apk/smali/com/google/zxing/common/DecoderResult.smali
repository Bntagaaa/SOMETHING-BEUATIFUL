.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    .line 40
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/List;

    .line 42
    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public getECLevel()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    return-object v0
.end method
