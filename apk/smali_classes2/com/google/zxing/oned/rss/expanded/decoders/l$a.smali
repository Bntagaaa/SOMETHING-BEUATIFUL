.class final enum Lcom/google/zxing/oned/rss/expanded/decoders/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/rss/expanded/decoders/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/rss/expanded/decoders/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

.field public static final enum b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

.field public static final enum c:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 37
    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->a:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 39
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 37
    const-string v1, "ALPHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 40
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 37
    const-string v1, "ISO_IEC_646"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->c:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    return-void
.end method
