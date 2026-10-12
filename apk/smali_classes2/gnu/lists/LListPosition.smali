.class Lgnu/lists/LListPosition;
.super Lgnu/lists/ExtPosition;
.source "SourceFile"


# instance fields
.field xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/LList;IZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/LListPosition;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 31
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 32
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 33
    iget-object p1, p1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    iput-object p1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copy()Lgnu/lists/SeqPosition;
    .locals 1

    .line 38
    new-instance v0, Lgnu/lists/LListPosition;

    invoke-direct {v0, p0}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    return-object v0
.end method

.method public getNext()Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getNextPair()Lgnu/lists/Pair;
    .locals 2

    .line 101
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    and-int/lit8 v1, v0, 0x1

    if-lez v1, :cond_1

    .line 105
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    shr-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 109
    check-cast v1, Lgnu/lists/Pair;

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    iget-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/Pair;

    iget-object v1, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 117
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_0

    .line 119
    :cond_2
    check-cast v0, Lgnu/lists/Pair;

    iget-object v1, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 121
    :cond_3
    :goto_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    check-cast v1, Lgnu/lists/Pair;

    return-object v1
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getPreviousPair()Lgnu/lists/Pair;
    .locals 3

    .line 141
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    and-int/lit8 v0, v0, 0x1

    .line 142
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-nez v1, :cond_0

    .line 144
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    iget-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-object v2

    .line 147
    :cond_2
    :goto_1
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v0, :cond_3

    return-object v2

    .line 149
    :cond_3
    check-cast v1, Lgnu/lists/Pair;

    return-object v1
.end method

.method public gotoNext()Z
    .locals 6

    .line 171
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    iget-object v4, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    .line 177
    check-cast v4, Lgnu/lists/Pair;

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 178
    :cond_1
    move-object v1, v4

    check-cast v1, Lgnu/lists/Pair;

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v5, :cond_2

    return v2

    .line 180
    :cond_2
    iput-object v4, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    or-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    .line 181
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    goto :goto_1

    :cond_3
    shr-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 185
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x3

    .line 187
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 192
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v4, :cond_6

    return v2

    :cond_6
    const/4 v1, 0x5

    .line 194
    iput v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 195
    iput-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    :goto_1
    return v3
.end method

.method public gotoPrevious()Z
    .locals 4

    .line 202
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x3

    .line 207
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    return v3

    .line 210
    :cond_1
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->nextIndex()I

    move-result v0

    .line 211
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/LList;

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0, v2}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    return v3
.end method

.method public hasNext()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 82
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    .line 84
    :cond_1
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1

    .line 87
    :cond_3
    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 88
    iget v3, p0, Lgnu/lists/SeqPosition;->ipos:I

    and-int/2addr v3, v2

    if-lez v3, :cond_4

    .line 89
    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 90
    :cond_4
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public hasPrevious()Z
    .locals 2

    .line 95
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 166
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .locals 0

    .line 74
    check-cast p1, Lgnu/lists/LList;

    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    return-void
.end method

.method public set(Lgnu/lists/LList;IZ)V
    .locals 1

    .line 48
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    shl-int/lit8 v0, p2, 0x1

    or-int/2addr v0, p3

    .line 49
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 64
    check-cast p1, Lgnu/lists/Pair;

    iget-object p1, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_1

    .line 66
    :cond_1
    iput-object p1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    return-void
.end method

.method public setNext(Ljava/lang/Object;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 135
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 161
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LListPos[index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0}, Lgnu/lists/ExtPosition;->isAfter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, " after"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_0
    iget v1, p0, Lgnu/lists/ExtPosition;->position:I

    if-ltz v1, :cond_1

    .line 226
    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget v1, p0, Lgnu/lists/ExtPosition;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v1, 0x5d

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
