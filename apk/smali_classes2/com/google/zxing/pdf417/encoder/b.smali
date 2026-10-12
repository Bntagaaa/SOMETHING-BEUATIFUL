.class final Lcom/google/zxing/pdf417/encoder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/zxing/pdf417/encoder/b;->a:[B

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/google/zxing/pdf417/encoder/b;->b:I

    return-void
.end method
