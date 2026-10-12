.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:D

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    const/4 p1, 0x3

    .line 659
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    .line 660
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    .line 661
    iput-wide p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->c:D

    const-wide/high16 p1, -0x8000000000000000L

    .line 662
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    .line 651
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    .line 652
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    .line 653
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    const-wide/16 p1, 0x1

    .line 654
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->c:D

    return-void
.end method

.method public static a(IIJII)I
    .locals 7

    const/4 v0, 0x1

    .line 738
    sget v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->FBT_NULL:I

    const/4 v1, 0x3

    if-le p0, v1, :cond_3

    const/16 v2, 0x1a

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const/16 p1, 0x20

    if-gt p0, p1, :cond_2

    not-int p1, p4

    add-int/2addr p1, v0

    add-int/lit8 v2, p0, -0x1

    and-int/2addr p1, v2

    add-int/2addr p1, p4

    mul-int v2, p5, p0

    add-int/2addr v2, p1

    int-to-long v2, v2

    sub-long/2addr v2, p2

    long-to-int p1, v2

    int-to-long v2, p1

    .line 755
    invoke-static {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result p1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    int-to-long v4, p0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return p1

    :cond_1
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return p1
.end method
