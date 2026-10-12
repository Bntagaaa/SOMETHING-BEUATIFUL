.class final Lcom/google/zxing/oned/rss/expanded/decoders/o;
.super Lcom/google/zxing/oned/rss/expanded/decoders/p;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(I)V

    .line 43
    iput p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/o;->b:I

    .line 44
    iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/o;->c:I

    if-ltz p2, :cond_1

    const/16 p1, 0xa

    if-gt p2, p1, :cond_1

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid secondDigit: "

    .line 0
    invoke-static {p3, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid firstDigit: "

    .line 0
    invoke-static {p2, p3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
