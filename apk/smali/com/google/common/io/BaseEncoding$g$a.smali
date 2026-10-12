.class Lcom/google/common/io/BaseEncoding$g$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$g;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Ljava/io/Writer;

.field public final synthetic e:Lcom/google/common/io/BaseEncoding$g;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$g;Ljava/io/Writer;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->e:Lcom/google/common/io/BaseEncoding$g;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$g$a;->d:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    .line 595
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->a:I

    .line 596
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    .line 597
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g$a;->d:Ljava/io/Writer;

    if-lez v0, :cond_0

    .line 620
    iget v2, p0, Lcom/google/common/io/BaseEncoding$g$a;->a:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$g$a;->e:Lcom/google/common/io/BaseEncoding$g;

    iget-object v4, v3, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v5, v4, Lcom/google/common/io/BaseEncoding$c;->d:I

    sub-int/2addr v5, v0

    shl-int v0, v2, v5

    iget v2, v4, Lcom/google/common/io/BaseEncoding$c;->c:I

    and-int/2addr v0, v2

    .line 472
    iget-object v2, v4, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 472
    aget-char v0, v2, v0

    .line 621
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 622
    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    .line 623
    iget-object v0, v3, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 624
    :goto_0
    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    iget-object v2, v3, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$c;->e:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, v3, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 626
    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->a:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 602
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->a:I

    .line 603
    iget p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    .line 604
    :goto_0
    iget p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g$a;->e:Lcom/google/common/io/BaseEncoding$g;

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v2, v1, Lcom/google/common/io/BaseEncoding$c;->d:I

    if-lt p1, v2, :cond_0

    .line 605
    iget v3, p0, Lcom/google/common/io/BaseEncoding$g$a;->a:I

    sub-int/2addr p1, v2

    shr-int p1, v3, p1

    iget v2, v1, Lcom/google/common/io/BaseEncoding$c;->c:I

    and-int/2addr p1, v2

    .line 472
    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 472
    aget-char p1, v1, p1

    .line 606
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g$a;->d:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 607
    iget p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->c:I

    .line 608
    iget p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$c;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$a;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method
