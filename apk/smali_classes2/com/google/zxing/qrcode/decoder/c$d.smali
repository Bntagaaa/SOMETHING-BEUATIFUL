.class final Lcom/google/zxing/qrcode/decoder/c$d;
.super Lcom/google/zxing/qrcode/decoder/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/c;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 0

    .line 108
    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
