.class final Lcom/google/zxing/qrcode/decoder/c$f;
.super Lcom/google/zxing/qrcode/decoder/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/c;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/c$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 128
    div-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
