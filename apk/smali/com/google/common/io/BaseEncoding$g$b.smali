.class Lcom/google/common/io/BaseEncoding$g$b;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$g;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Ljava/io/Reader;

.field public final synthetic f:Lcom/google/common/io/BaseEncoding$g;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$g;Ljava/io/Reader;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$g$b;->f:Lcom/google/common/io/BaseEncoding$g;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$g$b;->e:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    .line 735
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$b;->a:I

    .line 736
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$b;->b:I

    .line 737
    iput p1, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    .line 738
    iput-boolean p1, p0, Lcom/google/common/io/BaseEncoding$g$b;->d:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->e:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->e:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 744
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->f:Lcom/google/common/io/BaseEncoding$g;

    const/4 v2, -0x1

    iget-object v3, v1, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    if-ne v0, v2, :cond_3

    .line 745
    iget-boolean v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->d:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    .line 476
    iget v1, v3, Lcom/google/common/io/BaseEncoding$c;->e:I

    .line 476
    rem-int/2addr v0, v1

    iget-object v1, v3, Lcom/google/common/io/BaseEncoding$c;->h:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 746
    :cond_1
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 746
    throw v0

    :cond_2
    :goto_1
    return v2

    .line 750
    :cond_3
    iget v2, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    int-to-char v0, v0

    .line 752
    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v1, v0, :cond_6

    .line 753
    iget-boolean v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->d:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    if-eq v0, v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 476
    iget v1, v3, Lcom/google/common/io/BaseEncoding$c;->e:I

    .line 476
    rem-int/2addr v0, v1

    iget-object v1, v3, Lcom/google/common/io/BaseEncoding$c;->h:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 755
    :cond_4
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Padding cannot start at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 755
    throw v0

    .line 757
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/google/common/io/BaseEncoding$g$b;->d:Z

    goto :goto_0

    .line 758
    :cond_6
    iget-boolean v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->d:Z

    if-nez v1, :cond_7

    .line 762
    iget v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->a:I

    iget v2, v3, Lcom/google/common/io/BaseEncoding$c;->d:I

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->a:I

    .line 763
    invoke-virtual {v3, v0}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->a:I

    .line 764
    iget v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->b:I

    iget v2, v3, Lcom/google/common/io/BaseEncoding$c;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->b:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 767
    iput v1, p0, Lcom/google/common/io/BaseEncoding$g$b;->b:I

    shr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 759
    :cond_7
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected padding character but found \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/common/io/BaseEncoding$g$b;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 759
    throw v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 781
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    .line 785
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$g$b;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    int-to-byte v1, v1

    .line 790
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method
