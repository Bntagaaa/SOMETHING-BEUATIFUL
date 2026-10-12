.class abstract Lcom/google/zxing/qrcode/decoder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/c$i;,
        Lcom/google/zxing/qrcode/decoder/c$h;,
        Lcom/google/zxing/qrcode/decoder/c$g;,
        Lcom/google/zxing/qrcode/decoder/c$f;,
        Lcom/google/zxing/qrcode/decoder/c$e;,
        Lcom/google/zxing/qrcode/decoder/c$d;,
        Lcom/google/zxing/qrcode/decoder/c$c;,
        Lcom/google/zxing/qrcode/decoder/c$b;
    }
.end annotation


# static fields
.field public static final a:[Lcom/google/zxing/qrcode/decoder/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/decoder/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/decoder/c$b;-><init>(I)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/c$c;

    invoke-direct {v2, v1}, Lcom/google/zxing/qrcode/decoder/c$c;-><init>(I)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/c$d;

    invoke-direct {v3, v1}, Lcom/google/zxing/qrcode/decoder/c$d;-><init>(I)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/c$e;

    invoke-direct {v4, v1}, Lcom/google/zxing/qrcode/decoder/c$e;-><init>(I)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/c$f;

    invoke-direct {v5, v1}, Lcom/google/zxing/qrcode/decoder/c$f;-><init>(I)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/c$g;

    invoke-direct {v6, v1}, Lcom/google/zxing/qrcode/decoder/c$g;-><init>(I)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/c$h;

    invoke-direct {v7, v1}, Lcom/google/zxing/qrcode/decoder/c$h;-><init>(I)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/c$i;

    invoke-direct {v8, v1}, Lcom/google/zxing/qrcode/decoder/c$i;-><init>(I)V

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/c;

    aput-object v0, v9, v1

    const/4 v0, 0x1

    aput-object v2, v9, v0

    const/4 v0, 0x2

    aput-object v3, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v7, v9, v0

    const/4 v0, 0x7

    aput-object v8, v9, v0

    sput-object v9, Lcom/google/zxing/qrcode/decoder/c;->a:[Lcom/google/zxing/qrcode/decoder/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(II)Z
.end method
