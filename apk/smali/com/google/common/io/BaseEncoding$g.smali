.class Lcom/google/common/io/BaseEncoding$g;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final f:Lcom/google/common/io/BaseEncoding$c;

.field public final g:Ljava/lang/Character;

.field public transient h:Lcom/google/common/io/BaseEncoding;

.field public transient i:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V
    .locals 1

    .line 576
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 577
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding$c;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    if-eqz p2, :cond_1

    .line 579
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/BaseEncoding$c;->matches(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Padding character %s was already in alphabet"

    .line 578
    invoke-static {p1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 582
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lcom/google/common/io/BaseEncoding$g;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/CharSequence;)I
    .locals 17

    move-object/from16 v0, p0

    .line 707
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p2

    .line 708
    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$g;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 709
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 476
    iget-object v3, v0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v4, v3, Lcom/google/common/io/BaseEncoding$c;->e:I

    .line 476
    rem-int/2addr v2, v4

    iget-object v4, v3, Lcom/google/common/io/BaseEncoding$c;->h:[Z

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 713
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 716
    :goto_1
    iget v10, v3, Lcom/google/common/io/BaseEncoding$c;->d:I

    iget v11, v3, Lcom/google/common/io/BaseEncoding$c;->e:I

    if-ge v8, v11, :cond_1

    shl-long/2addr v6, v10

    add-int v10, v4, v8

    .line 718
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    add-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v4

    .line 719
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v9

    int-to-long v11, v9

    or-long/2addr v6, v11

    move v9, v10

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 722
    :cond_1
    iget v8, v3, Lcom/google/common/io/BaseEncoding$c;->f:I

    mul-int/lit8 v12, v8, 0x8

    mul-int v9, v9, v10

    sub-int/2addr v12, v9

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x8

    :goto_2
    if-lt v8, v12, :cond_2

    add-int/lit8 v9, v5, 0x1

    ushr-long v13, v6, v8

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v10, v13

    int-to-byte v10, v10

    .line 724
    aput-byte v10, p1, v5

    add-int/lit8 v8, v8, -0x8

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/2addr v4, v11

    goto :goto_0

    :cond_3
    return v5

    .line 710
    :cond_4
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid input length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 710
    throw v2
.end method

.method public b([BLjava/lang/Appendable;II)V
    .locals 5

    .line 637
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 638
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 640
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v3, v2, Lcom/google/common/io/BaseEncoding$c;->f:I

    sub-int v4, p4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/google/common/io/BaseEncoding$g;->f([BLjava/lang/Appendable;II)V

    .line 639
    iget v1, v2, Lcom/google/common/io/BaseEncoding$c;->f:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$c;->d:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public canDecode(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 692
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding$g;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 694
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v2, v1, Lcom/google/common/io/BaseEncoding$c;->e:I

    .line 476
    rem-int/2addr v0, v2

    iget-object v2, v1, Lcom/google/common/io/BaseEncoding$c;->h:[Z

    aget-boolean v0, v2, v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 698
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    .line 480
    iget-object v4, v1, Lcom/google/common/io/BaseEncoding$c;->g:[B

    .line 480
    aget-byte v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final d(I)I
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$c;->e:I

    iget v0, v0, Lcom/google/common/io/BaseEncoding$c;->f:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int p1, p1, v1

    return p1
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 733
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v0, Lcom/google/common/io/BaseEncoding$g$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$g$b;-><init>(Lcom/google/common/io/BaseEncoding$g;Ljava/io/Reader;)V

    return-object v0
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 676
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 682
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 683
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 687
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 593
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v0, Lcom/google/common/io/BaseEncoding$g$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$g$a;-><init>(Lcom/google/common/io/BaseEncoding$g;Ljava/io/Writer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 877
    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 878
    check-cast p1, Lcom/google/common/io/BaseEncoding$g;

    .line 879
    iget-object v0, p1, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    .line 880
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final f([BLjava/lang/Appendable;II)V
    .locals 8

    .line 645
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 646
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 647
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$c;->f:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v1, p4, :cond_1

    add-int v6, p3, v1

    .line 650
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v3, v6

    shl-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p4, 0x1

    mul-int/lit8 p1, p1, 0x8

    .line 654
    iget p3, v0, Lcom/google/common/io/BaseEncoding$c;->d:I

    sub-int/2addr p1, p3

    :goto_2
    mul-int/lit8 v1, p4, 0x8

    if-ge v2, v1, :cond_2

    sub-int v1, p1, v2

    ushr-long v6, v3, v1

    long-to-int v1, v6

    .line 657
    iget v6, v0, Lcom/google/common/io/BaseEncoding$c;->c:I

    and-int/2addr v1, v6

    .line 472
    iget-object v6, v0, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 472
    aget-char v1, v6, v1

    .line 658
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_2

    .line 661
    :cond_2
    iget-object p1, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-eqz p1, :cond_3

    .line 662
    :goto_3
    iget p4, v0, Lcom/google/common/io/BaseEncoding$c;->f:I

    mul-int/lit8 p4, p4, 0x8

    if-ge v2, p4, :cond_3

    .line 663
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p4

    invoke-interface {p2, p4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    return-void
.end method

.method public g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 858
    new-instance v0, Lcom/google/common/io/BaseEncoding$g;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$g;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$c;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 7

    .line 849
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->i:Lcom/google/common/io/BaseEncoding;

    if-nez v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$c;->b:[C

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-char v5, v1, v4

    .line 509
    invoke-static {v5}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 499
    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$c;->b:[C

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-char v6, v1, v4

    .line 500
    invoke-static {v6}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v5

    .line 533
    const-string v4, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 534
    array-length v2, v1

    new-array v2, v2, [C

    .line 535
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 536
    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 538
    :cond_2
    new-instance v1, Lcom/google/common/io/BaseEncoding$c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$c;->a:Ljava/lang/String;

    const-string v5, ".lowerCase()"

    .line 0
    invoke-static {v3, v4, v5}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-direct {v1, v3, v2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;[C)V

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_4
    if-ne v1, v0, :cond_5

    move-object v0, p0

    goto :goto_5

    .line 852
    :cond_5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/BaseEncoding$g;->g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->i:Lcom/google/common/io/BaseEncoding;

    :cond_6
    return-object v0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$g;->g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 865
    iget v1, v1, Lcom/google/common/io/BaseEncoding$c;->d:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 866
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-nez v1, :cond_0

    .line 867
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 869
    :cond_0
    const-string v2, ".withPadChar(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 7

    .line 839
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->h:Lcom/google/common/io/BaseEncoding;

    if-nez v0, :cond_6

    .line 499
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$c;->b:[C

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-char v5, v1, v4

    .line 500
    invoke-static {v5}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    iget-object v1, v0, Lcom/google/common/io/BaseEncoding$c;->b:[C

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-char v6, v1, v4

    .line 509
    invoke-static {v6}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v5

    .line 520
    const-string v4, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 521
    array-length v2, v1

    new-array v2, v2, [C

    .line 522
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 523
    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 525
    :cond_2
    new-instance v1, Lcom/google/common/io/BaseEncoding$c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/google/common/io/BaseEncoding$c;->a:Ljava/lang/String;

    const-string v5, ".upperCase()"

    .line 0
    invoke-static {v3, v4, v5}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-direct {v1, v3, v2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;[C)V

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_4
    if-ne v1, v0, :cond_5

    move-object v0, p0

    goto :goto_5

    .line 842
    :cond_5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/BaseEncoding$g;->g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->h:Lcom/google/common/io/BaseEncoding;

    :cond_6
    return-object v0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$c;->d:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/BaseEncoding$g;->g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 819
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    .line 821
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/common/io/BaseEncoding$c;->matches(C)Z

    move-result v2

    xor-int/2addr v2, v3

    const-string v3, "Separator (%s) cannot contain alphabet characters"

    .line 820
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->g:Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 827
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "Separator (%s) cannot contain padding character"

    .line 826
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 831
    :cond_2
    new-instance v0, Lcom/google/common/io/BaseEncoding$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/BaseEncoding$f;-><init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V

    return-object v0
.end method
