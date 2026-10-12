.class public Lgnu/lists/GeneralArray1;
.super Lgnu/lists/GeneralArray;
.source "SourceFile"

# interfaces
.implements Lgnu/lists/Sequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/lists/GeneralArray;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 4

    .line 20
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GeneralArray;->offset:I

    iget-object v2, p0, Lgnu/lists/GeneralArray;->strides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    ushr-int/lit8 v3, p1, 0x1

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p3}, Lgnu/lists/SimpleVector;->consume(IILgnu/lists/Consumer;)V

    .line 28
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p1

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public createPos(IZ)I
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method public nextIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lgnu/lists/GeneralArray;->size()I

    move-result p1

    return p1

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    return p1
.end method
