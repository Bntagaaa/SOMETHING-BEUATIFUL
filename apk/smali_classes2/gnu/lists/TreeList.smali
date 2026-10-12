.class public Lgnu/lists/TreeList;
.super Lgnu/lists/AbstractSequence;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static final BEGIN_ATTRIBUTE_LONG:I = 0xf109

.field public static final BEGIN_ATTRIBUTE_LONG_SIZE:I = 0x5

.field protected static final BEGIN_DOCUMENT:I = 0xf110

.field protected static final BEGIN_ELEMENT_LONG:I = 0xf108

.field protected static final BEGIN_ELEMENT_SHORT:I = 0xa000

.field protected static final BEGIN_ELEMENT_SHORT_INDEX_MAX:I = 0xfff

.field public static final BEGIN_ENTITY:I = 0xf112

.field public static final BEGIN_ENTITY_SIZE:I = 0x5

.field static final BOOL_FALSE:C = '\uf100'

.field static final BOOL_TRUE:C = '\uf101'

.field static final BYTE_PREFIX:I = 0xf000

.field static final CDATA_SECTION:I = 0xf115

.field static final CHAR_FOLLOWS:I = 0xf106

.field static final COMMENT:I = 0xf117

.field protected static final DOCUMENT_URI:I = 0xf118

.field static final DOUBLE_FOLLOWS:I = 0xf105

.field static final END_ATTRIBUTE:I = 0xf10a

.field public static final END_ATTRIBUTE_SIZE:I = 0x1

.field protected static final END_DOCUMENT:I = 0xf111

.field protected static final END_ELEMENT_LONG:I = 0xf10c

.field protected static final END_ELEMENT_SHORT:I = 0xf10b

.field protected static final END_ENTITY:I = 0xf113

.field static final FLOAT_FOLLOWS:I = 0xf104

.field public static final INT_FOLLOWS:I = 0xf102

.field static final INT_SHORT_ZERO:I = 0xc000

.field static final JOINER:I = 0xf116

.field static final LONG_FOLLOWS:I = 0xf103

.field public static final MAX_CHAR_SHORT:I = 0x9fff

.field static final MAX_INT_SHORT:I = 0x1fff

.field static final MIN_INT_SHORT:I = -0x1000

.field static final OBJECT_REF_FOLLOWS:C = '\uf10d'

.field static final OBJECT_REF_SHORT:I = 0xe000

.field static final OBJECT_REF_SHORT_INDEX_MAX:I = 0xfff

.field protected static final POSITION_PAIR_FOLLOWS:C = '\uf10f'

.field static final POSITION_REF_FOLLOWS:C = '\uf10e'

.field protected static final PROCESSING_INSTRUCTION:I = 0xf114


# instance fields
.field public attrStart:I

.field currentParent:I

.field public data:[C

.field public docStart:I

.field public gapEnd:I

.field public gapStart:I

.field public objects:[Ljava/lang/Object;

.field public oindex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    const/4 v0, -0x1

    .line 324
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 40
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    const/16 v0, 0xc8

    .line 41
    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 42
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/TreeList;->data:[C

    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;)V
    .locals 2

    .line 59
    iget-object v0, p1, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;II)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 54
    invoke-virtual {p1, p2, p3, p0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    return-void
.end method

.method private copyToList(II)Ljava/lang/Object;
    .locals 1

    .line 1646
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    return-object v0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 0

    .line 683
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 2

    if-nez p1, :cond_0

    .line 829
    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 830
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1

    if-nez p1, :cond_0

    .line 836
    const-string p1, "null"

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 838
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 3

    .line 535
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 537
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 538
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 539
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 540
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf112

    aput-char v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    .line 541
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 p1, v0, 0x3

    .line 542
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sub-int v2, v1, v0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 p1, v0, 0x5

    .line 543
    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 544
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 545
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v1, 0xf113

    aput-char v1, p1, v0

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 65
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 66
    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    const/16 v1, 0xc8

    .line 69
    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 70
    new-array v1, v1, [C

    iput-object v1, p0, Lgnu/lists/TreeList;->data:[C

    :cond_0
    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 73
    iput v0, p0, Lgnu/lists/TreeList;->oindex:I

    .line 74
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    return-void
.end method

.method public compare(II)I
    .locals 0

    .line 2271
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 2272
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 2

    .line 2303
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 4

    const/4 v0, 0x3

    .line 400
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 402
    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    .line 403
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10e

    aput-char v3, v0, v1

    .line 404
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 405
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public consumeIRange(IILgnu/lists/Consumer;)I
    .locals 6

    .line 1091
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-lt p1, v0, :cond_2

    .line 1098
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-le p2, v0, :cond_1

    move p1, v0

    move v0, p2

    goto :goto_1

    :cond_1
    return p1

    .line 1107
    :cond_2
    :goto_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v3, v1, p1

    const v4, 0x9fff

    if-gt v3, v4, :cond_6

    :goto_2
    if-lt v2, v0, :cond_3

    goto :goto_3

    .line 1117
    :cond_3
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    if-le v1, v4, :cond_5

    .line 1124
    :goto_3
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v3, v2, p1

    invoke-interface {p3, v1, p1, v3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_4
    :goto_4
    move p1, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const v4, 0xe000

    if-lt v3, v4, :cond_7

    const v5, 0xefff

    if-gt v3, v5, :cond_7

    .line 1130
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v3, v4

    aget-object p1, p1, v3

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    const v4, 0xa000

    if-lt v3, v4, :cond_9

    const v5, 0xafff

    if-gt v3, v5, :cond_9

    sub-int/2addr v3, v4

    .line 1137
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_9
    const v4, 0xb000

    if-lt v3, v4, :cond_a

    const v4, 0xdfff

    if-gt v3, v4, :cond_a

    const p1, 0xc000

    sub-int/2addr v3, p1

    .line 1151
    invoke-interface {p3, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    goto :goto_4

    :cond_a
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 1283
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "unknown code:"

    .line 0
    invoke-static {v3, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1283
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1173
    :pswitch_1
    instance-of v1, p3, Lgnu/lists/TreeList;

    if-eqz v1, :cond_8

    .line 1174
    move-object v1, p3

    check-cast v1, Lgnu/lists/TreeList;

    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    goto :goto_5

    .line 1179
    :pswitch_2
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x3

    .line 1181
    instance-of v2, p3, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_b

    .line 1182
    move-object v2, p3

    check-cast v2, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v2, v3, p1, v1}, Lgnu/lists/XConsumer;->writeComment([CII)V

    :cond_b
    :goto_6
    add-int/2addr p1, v1

    goto/16 :goto_0

    .line 1213
    :pswitch_3
    const-string p1, ""

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 1188
    :pswitch_4
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x3

    .line 1190
    instance-of v2, p3, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_c

    .line 1191
    move-object v2, p3

    check-cast v2, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v2, v3, p1, v1}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_6

    .line 1193
    :cond_c
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {p3, v2, p1, v1}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_6

    .line 1199
    :pswitch_5
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x3

    .line 1200
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    add-int/lit8 p1, p1, 0x5

    .line 1202
    instance-of v3, p3, Lgnu/lists/XConsumer;

    if-eqz v3, :cond_d

    .line 1203
    move-object v3, p3

    check-cast v3, Lgnu/lists/XConsumer;

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v3, v1, v4, p1, v2}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    :cond_d
    add-int/2addr p1, v2

    goto/16 :goto_0

    .line 1169
    :pswitch_6
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_4

    .line 1170
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    invoke-virtual {p1}, Lgnu/lists/TreeList;->endEntity()V

    goto/16 :goto_4

    .line 1164
    :pswitch_7
    instance-of v1, p3, Lgnu/lists/TreeList;

    if-eqz v1, :cond_e

    .line 1165
    move-object v1, p3

    check-cast v1, Lgnu/lists/TreeList;

    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->beginEntity(Ljava/lang/Object;)V

    :cond_e
    :goto_7
    add-int/lit8 p1, p1, 0x5

    goto/16 :goto_0

    .line 1161
    :pswitch_8
    invoke-interface {p3}, Lgnu/lists/Consumer;->endDocument()V

    goto/16 :goto_4

    .line 1157
    :pswitch_9
    invoke-interface {p3}, Lgnu/lists/Consumer;->startDocument()V

    goto :goto_7

    .line 1221
    :pswitch_a
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/lists/AbstractSequence;

    add-int/lit8 v2, p1, 0x3

    .line 1222
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1223
    instance-of v3, p3, Lgnu/lists/PositionConsumer;

    if-eqz v3, :cond_f

    .line 1224
    move-object v3, p3

    check-cast v3, Lgnu/lists/PositionConsumer;

    invoke-interface {v3, v1, v2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_7

    .line 1226
    :cond_f
    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_7

    .line 1231
    :pswitch_b
    instance-of v1, p3, Lgnu/lists/PositionConsumer;

    if-eqz v1, :cond_10

    .line 1233
    move-object v1, p3

    check-cast v1, Lgnu/lists/PositionConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v2, v3, v2

    check-cast v2, Lgnu/lists/SeqPosition;

    invoke-interface {v1, v2}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    goto/16 :goto_5

    .line 1239
    :cond_10
    :pswitch_c
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1254
    :pswitch_d
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    .line 1255
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    add-int/lit8 p1, p1, 0x7

    goto/16 :goto_0

    :pswitch_e
    add-int/lit8 p1, p1, 0x2

    .line 1244
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    goto/16 :goto_0

    .line 1264
    :pswitch_f
    invoke-interface {p3}, Lgnu/lists/Consumer;->endAttribute()V

    goto/16 :goto_4

    .line 1259
    :pswitch_10
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1260
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_7

    .line 1247
    :pswitch_11
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    if-ltz v1, :cond_11

    move v2, p1

    goto :goto_8

    .line 1248
    :cond_11
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    :goto_8
    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v1, v4

    .line 1250
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1251
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_12
    const v4, -0xf105

    add-int/2addr v3, v4

    .line 1216
    invoke-interface {p3, v1, v2, v3}, Lgnu/lists/Consumer;->write([CII)V

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    .line 1279
    :pswitch_13
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-interface {p3, v1, v2}, Lgnu/lists/Consumer;->writeDouble(D)V

    goto/16 :goto_7

    .line 1271
    :pswitch_14
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeFloat(F)V

    goto/16 :goto_5

    .line 1275
    :pswitch_15
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v1

    invoke-interface {p3, v1, v2}, Lgnu/lists/Consumer;->writeLong(J)V

    goto/16 :goto_7

    .line 1267
    :pswitch_16
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    goto/16 :goto_5

    :pswitch_17
    const p1, 0xf100

    if-eq v3, p1, :cond_12

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    .line 1210
    :goto_9
    invoke-interface {p3, v4}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 1

    .line 1072
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1074
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    const v0, 0x7fffffff

    .line 1075
    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1077
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    :cond_1
    if-ltz v0, :cond_2

    .line 1079
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    return-void
.end method

.method public createPos(IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, v0, p1, p2}, Lgnu/lists/TreeList;->createRelativePos(IIZ)I

    move-result p1

    return p1
.end method

.method public createRelativePos(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-nez p2, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    if-ltz p2, :cond_7

    .line 1927
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    .line 1930
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    if-ltz p1, :cond_3

    goto :goto_0

    .line 1932
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1934
    :cond_4
    iget p2, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt p1, p2, :cond_5

    .line 1935
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    :cond_5
    if-eqz p3, :cond_6

    add-int/2addr p1, v0

    shl-int/2addr p1, v0

    or-int/2addr p1, v0

    return p1

    :cond_6
    shl-int/2addr p1, v0

    return p1

    .line 1926
    :cond_7
    const-string p1, "backwards createRelativePos"

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public documentUriOfPos(I)Ljava/lang/Object;
    .locals 4

    .line 2249
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 2250
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return-object v2

    .line 2252
    :cond_0
    aget-char v1, v0, p1

    const v3, 0xf110

    if-ne v1, v3, :cond_2

    add-int/lit8 p1, p1, 0x5

    .line 2255
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v1, :cond_1

    .line 2256
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2257
    :cond_1
    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-char v0, v0, p1

    const v1, 0xf118

    if-ne v0, v1, :cond_2

    .line 2258
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    return-object v2
.end method

.method public dump()V
    .locals 2

    .line 2323
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2325
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;)V

    .line 2326
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gapStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gapEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_11

    .line 2344
    iget v6, v0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v7, 0x1

    if-lt v3, v6, :cond_0

    iget v6, v0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v3, v6, :cond_10

    .line 2347
    :cond_0
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v6, v6, v3

    .line 2348
    const-string v8, ""

    const-string v9, ": 0x"

    .line 0
    invoke-static {v3, v8, v9}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2348
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-short v10, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_f

    const v8, 0x9fff

    if-gt v6, v8, :cond_3

    const/16 v8, 0x20

    .line 2353
    const-string v9, "\'"

    if-lt v6, v8, :cond_1

    const/16 v8, 0x7f

    if-ge v6, v8, :cond_1

    .line 2354
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "=\'"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1
    const/16 v8, 0xa

    if-ne v6, v8, :cond_2

    .line 2356
    const-string v6, "=\'\\n\'"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2358
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "=\'\\u"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_3
    const/16 v8, 0x40

    const v10, 0xe000

    if-lt v6, v10, :cond_4

    const v11, 0xefff

    if-gt v6, v11, :cond_4

    sub-int/2addr v6, v10

    .line 2364
    iget-object v10, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v6

    .line 2365
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "=Object#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_4
    const v10, 0xa000

    const/16 v11, 0x3e

    .line 2369
    const-string v12, "=<"

    const/4 v13, 0x2

    if-lt v6, v10, :cond_5

    const v14, 0xafff

    if-gt v6, v14, :cond_5

    sub-int/2addr v6, v10

    .line 2373
    iget-object v5, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x1

    aget-char v5, v5, v8

    add-int/2addr v5, v3

    .line 2374
    const-string v8, "=BEGIN_ELEMENT_SHORT end:"

    const-string v9, " index#"

    .line 0
    invoke-static {v5, v6, v8, v9, v12}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2374
    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    :pswitch_0
    const/4 v5, 0x2

    goto/16 :goto_a

    :cond_5
    const v14, 0xb000

    if-lt v6, v14, :cond_6

    const v14, 0xdfff

    if-gt v6, v14, :cond_6

    .line 2380
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "= INT_SHORT:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0xc000

    sub-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2384
    :cond_6
    const-string v14, " -> #"

    const-string v15, " parent:"

    const/16 v2, 0x27

    const/16 v16, 0x4

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_a

    .line 2431
    :pswitch_2
    const-string v2, "=DOCUMENT_URI: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    .line 2432
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2433
    iget-object v5, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_1

    .line 2437
    :pswitch_3
    const-string v5, "=COMMENT: \'"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    .line 2438
    invoke-virtual {v0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2439
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v1, v6, v8, v5}, Ljava/io/PrintWriter;->write([CII)V

    .line 2440
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    :goto_2
    add-int/2addr v5, v13

    goto/16 :goto_a

    .line 2465
    :pswitch_4
    const-string v2, "= joiner"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2444
    :pswitch_5
    const-string v5, "=CDATA: \'"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    .line 2445
    invoke-virtual {v0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2446
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v1, v6, v8, v5}, Ljava/io/PrintWriter;->write([CII)V

    .line 2447
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    .line 2451
    :pswitch_6
    const-string v5, "=PROCESSING_INSTRUCTION: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    .line 2452
    invoke-virtual {v0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2453
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v5, v6, v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2454
    const-string v5, " \'"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x3

    .line 2455
    invoke-virtual {v0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2456
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x5

    invoke-virtual {v1, v6, v8, v5}, Ljava/io/PrintWriter;->write([CII)V

    .line 2457
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_a

    .line 2428
    :pswitch_7
    const-string v2, "=END_ENTITY"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .line 2419
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2420
    const-string v5, "=BEGIN_ENTITY base:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    .line 2423
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2424
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    :goto_3
    const/4 v5, 0x4

    goto/16 :goto_a

    .line 2461
    :pswitch_9
    const-string v2, "=END_DOCUMENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_a
    add-int/lit8 v2, v3, 0x1

    .line 2409
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    if-gez v2, :cond_7

    .line 2410
    iget-object v5, v0, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    add-int/2addr v2, v5

    .line 2411
    const-string v5, "=BEGIN_DOCUMENT end:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    .line 2414
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2415
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_3

    .line 2519
    :pswitch_b
    const-string v2, "=POSITION_PAIR_FOLLOWS seq:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    .line 2521
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2523
    iget-object v5, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v5, v2

    if-nez v2, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    .line 2524
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    if-nez v2, :cond_9

    .line 2526
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 2527
    :cond_9
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :goto_6
    const-string v2, " ipos:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    .line 2529
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_3

    :pswitch_c
    add-int/lit8 v2, v3, 0x1

    .line 2497
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2498
    const-string v5, "=END_ELEMENT_LONG name:"

    .line 0
    invoke-static {v2, v5, v12}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2498
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    .line 2500
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    if-gez v2, :cond_a

    add-int/2addr v2, v3

    .line 2502
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " begin:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x5

    .line 2503
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    if-gez v2, :cond_b

    add-int/2addr v2, v3

    .line 2505
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v5, 0x6

    goto/16 :goto_a

    .line 2472
    :pswitch_d
    const-string v2, "=END_ELEMENT_SHORT begin:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    iget-object v2, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v2, v2, v5

    sub-int v2, v3, v2

    .line 2474
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    iget-object v5, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v2, v5, v2

    sub-int/2addr v2, v10

    .line 2476
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2478
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget-object v5, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2480
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_a

    .line 2517
    :pswitch_e
    const-string v2, "=END_ATTRIBUTE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_f
    add-int/lit8 v2, v3, 0x1

    .line 2509
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2510
    const-string v5, "=BEGIN_ATTRIBUTE name:"

    const-string v6, "="

    .line 0
    invoke-static {v2, v5, v6}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2510
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    .line 2512
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    if-gez v2, :cond_c

    .line 2513
    iget-object v5, v0, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    goto :goto_8

    :cond_c
    move v5, v3

    :goto_8
    add-int/2addr v2, v5

    .line 2514
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " end:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_10
    add-int/lit8 v2, v3, 0x1

    .line 2483
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    if-gez v2, :cond_d

    .line 2484
    iget-object v5, v0, Lgnu/lists/TreeList;->data:[C

    array-length v5, v5

    goto :goto_9

    :cond_d
    move v5, v3

    :goto_9
    add-int/2addr v2, v5

    .line 2485
    const-string v5, "=BEGIN_ELEMENT_LONG end:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/2addr v2, v7

    .line 2487
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2488
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    if-ltz v2, :cond_e

    add-int/lit8 v5, v2, 0x1

    .line 2490
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_e

    .line 2491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2493
    :cond_e
    const-string v2, "=<out-of-bounds>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2467
    :pswitch_11
    const-string v2, "=CHAR_FOLLOWS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_12
    add-int/lit8 v2, v3, 0x1

    .line 2403
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v5

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "=DOUBLE_FOLLOWS value:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_13
    add-int/lit8 v2, v3, 0x1

    .line 2397
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2398
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=FLOAT_FOLLOWS value:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    add-int/lit8 v2, v3, 0x1

    .line 2392
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v5

    .line 2393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "=LONG_FOLLOWS value:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_15
    add-int/lit8 v2, v3, 0x1

    .line 2387
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2388
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=INT_FOLLOWS value:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2464
    :pswitch_16
    const-string v2, "= true"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 2463
    :pswitch_17
    const-string v2, "= false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    :cond_f
    :goto_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    if-lez v5, :cond_10

    add-int/2addr v3, v5

    const/4 v5, 0x0

    :cond_10
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public endAttribute()V
    .locals 4

    .line 670
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-gtz v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v1, v1, v2

    const v3, 0xf10a

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 675
    iput v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v0, 0x2

    .line 676
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    const/4 v0, 0x0

    .line 677
    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 678
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v0, v1

    return-void

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endAttribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 5

    .line 517
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v2, v0, v1

    const v3, 0xf111

    if-ne v2, v3, :cond_1

    iget v2, p0, Lgnu/lists/TreeList;->docStart:I

    if-lez v2, :cond_1

    iget v4, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v0, v0, v4

    const v4, 0xf110

    if-ne v0, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 521
    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 522
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lgnu/lists/TreeList;->docStart:I

    .line 524
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v0, v1

    .line 525
    iget v0, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    return-void

    .line 519
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endDocument"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement()V
    .locals 8

    .line 591
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v2, 0xf10c

    if-ne v0, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 593
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 594
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 595
    iget v3, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 596
    iput v3, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 597
    iget v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 598
    iget v4, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int v5, v4, v1

    sub-int v6, v1, v3

    const/16 v7, 0xfff

    if-ge v0, v7, :cond_0

    const/high16 v7, 0x10000

    if-ge v5, v7, :cond_0

    if-ge v6, v7, :cond_0

    .line 603
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    const v3, 0xa000

    or-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    int-to-char v3, v5

    .line 604
    aput-char v3, v2, v0

    add-int/lit8 v1, v1, 0x2

    int-to-char v0, v6

    .line 605
    aput-char v0, v2, v1

    const v0, 0xf10b

    .line 606
    aput-char v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    .line 607
    aput-char v3, v2, v0

    add-int/lit8 v4, v4, 0x2

    .line 608
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void

    .line 612
    :cond_0
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    const v6, 0xf108

    aput-char v6, v4, v1

    add-int/lit8 v4, v1, 0x1

    .line 613
    invoke-virtual {p0, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 614
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v2, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 615
    invoke-virtual {p0, v6, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 616
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x3

    neg-int v2, v5

    invoke-virtual {p0, v0, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 617
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ge v3, v0, :cond_1

    if-gt v1, v0, :cond_2

    :cond_1
    sub-int/2addr v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x5

    .line 619
    invoke-virtual {p0, v0, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 620
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void

    .line 592
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endElement"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endEntity()V
    .locals 6

    .line 551
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v2

    if-ne v1, v3, :cond_3

    aget-char v1, v2, v0

    const v3, 0xf113

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v4, v2, v1

    const v5, 0xf112

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 557
    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 558
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v2, v0

    add-int/lit8 v1, v1, 0x3

    .line 559
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    return-void

    .line 555
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endEntity"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public ensureSpace(I)V
    .locals 5

    .line 328
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 331
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v2

    sub-int v0, v3, v0

    add-int/2addr v0, p1

    mul-int/lit8 p1, v3, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 336
    :goto_0
    new-array p1, v0, [C

    if-lez v1, :cond_1

    const/4 v4, 0x0

    .line 338
    invoke-static {v2, v4, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v3, v1

    if-lez v3, :cond_2

    .line 341
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v4, v0, v3

    invoke-static {v2, v1, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sub-int/2addr v0, v3

    .line 342
    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 343
    iput-object p1, p0, Lgnu/lists/TreeList;->data:[C

    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 2

    .line 370
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 372
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    iget v1, p0, Lgnu/lists/TreeList;->oindex:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 373
    iput p1, p0, Lgnu/lists/TreeList;->oindex:I

    return v1
.end method

.method public firstAttributePos(I)I
    .locals 0

    .line 1039
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public firstChildPos(I)I
    .locals 0

    .line 900
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1063
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1067
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeCount(I)I
    .locals 3

    .line 1021
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1022
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1023
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getIndexDifference(II)I
    .locals 3

    .line 2278
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p2

    .line 2279
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    const/4 v0, 0x0

    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 2289
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    neg-int p1, v0

    return p1

    :cond_2
    return v0
.end method

.method public final getIntN(I)I
    .locals 2

    .line 379
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v0, p1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 p1, p1, 0x1

    aget-char p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    return p1
.end method

.method public final getLongN(I)J
    .locals 8

    .line 385
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 386
    aget-char v1, v0, p1

    int-to-long v1, v1

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/16 v5, 0x30

    shl-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x1

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 p1, p1, 0x3

    aget-char p1, v0, p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getNextKind(I)I
    .locals 0

    .line 1533
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextKindI(I)I

    move-result p1

    return p1
.end method

.method public getNextKindI(I)I
    .locals 6

    .line 1538
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 1540
    :cond_0
    aget-char v0, v0, p1

    const v1, 0x9fff

    if-gt v0, v1, :cond_1

    const/16 p1, 0x1d

    return p1

    :cond_1
    const v1, 0xe000

    const/16 v3, 0x20

    if-lt v0, v1, :cond_2

    const v1, 0xefff

    if-gt v0, v1, :cond_2

    return v3

    :cond_2
    const v1, 0xa000

    const/16 v4, 0x21

    if-lt v0, v1, :cond_3

    const v1, 0xafff

    if-gt v0, v1, :cond_3

    return v4

    :cond_3
    const v1, 0xff00

    and-int/2addr v1, v0

    const v5, 0xf000

    if-ne v1, v5, :cond_4

    const/16 p1, 0x1c

    return p1

    :cond_4
    const v1, 0xb000

    const/16 v5, 0x16

    if-lt v0, v1, :cond_5

    const v1, 0xdfff

    if-gt v0, v1, :cond_5

    return v5

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    const/16 p1, 0x24

    return p1

    :pswitch_2
    const/16 p1, 0x1f

    return p1

    :pswitch_3
    const/16 p1, 0x25

    return p1

    :pswitch_4
    add-int/lit8 p1, p1, 0x5

    shl-int/lit8 p1, p1, 0x1

    .line 1571
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result p1

    return p1

    :pswitch_5
    return v2

    :pswitch_6
    const/16 p1, 0x23

    return p1

    :pswitch_7
    return v4

    :pswitch_8
    const/16 p1, 0x22

    return p1

    :pswitch_9
    const/16 p1, 0x1a

    return p1

    :pswitch_a
    const/16 p1, 0x19

    return p1

    :pswitch_b
    const/16 p1, 0x18

    return p1

    :pswitch_c
    return v5

    :pswitch_d
    const/16 p1, 0x1b

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 0

    .line 1632
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1633
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 4

    .line 1601
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1605
    :goto_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return-object v2

    .line 1607
    :cond_0
    aget-char v0, v0, p1

    const v1, 0xf112

    if-eq v0, v1, :cond_7

    const v1, 0xa000

    if-lt v0, v1, :cond_1

    const v3, 0xafff

    if-gt v0, v3, :cond_1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const v1, 0xf108

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 1617
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 1618
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_2
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1619
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    goto :goto_1

    :cond_3
    const v1, 0xf109

    if-ne v0, v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 1622
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    goto :goto_1

    :cond_4
    const v1, 0xf114

    if-ne v0, v1, :cond_6

    add-int/lit8 p1, p1, 0x1

    .line 1624
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    :goto_1
    if-gez v0, :cond_5

    return-object v2

    .line 1627
    :cond_5
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_6
    return-object v2

    :cond_7
    add-int/lit8 p1, p1, 0x5

    goto :goto_0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 4

    .line 1667
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1668
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    if-ne p1, v1, :cond_0

    .line 1669
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 1670
    :cond_0
    aget-char v1, v0, p1

    const v2, 0x9fff

    if-gt v1, v2, :cond_1

    .line 1672
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const v2, 0xe000

    if-lt v1, v2, :cond_2

    const v3, 0xefff

    if-gt v1, v3, :cond_2

    .line 1675
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    const v2, 0xa000

    if-lt v1, v2, :cond_3

    const v2, 0xafff

    if-gt v1, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 1678
    aget-char v0, v0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const v2, 0xb000

    if-lt v1, v2, :cond_4

    const v2, 0xdfff

    if-gt v1, v2, :cond_4

    const p1, 0xc000

    sub-int/2addr v1, p1

    .line 1685
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1741
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getPosNext, code="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1735
    :pswitch_1
    const-string p1, ""

    return-object p1

    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    .line 1690
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 1691
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_0

    :cond_5
    move v1, p1

    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1699
    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1737
    :pswitch_3
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    add-int/lit8 p1, p1, 0x3

    .line 1738
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1739
    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    return-object p1

    .line 1733
    :pswitch_4
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 1730
    :pswitch_5
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    :pswitch_6
    add-int/lit8 v0, p1, 0x3

    .line 1716
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_6

    .line 1717
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_1

    :cond_6
    move v1, p1

    :goto_1
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1718
    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    add-int/lit8 v0, p1, 0x1

    .line 1722
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_7

    .line 1723
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_2

    :cond_7
    move v1, p1

    :goto_2
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 1724
    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    add-int/2addr p1, v2

    .line 1713
    aget-char p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    add-int/2addr p1, v2

    .line 1711
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    add-int/2addr p1, v2

    .line 1709
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    add-int/2addr p1, v2

    .line 1707
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c
    add-int/2addr p1, v2

    .line 1705
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    const p1, 0xf100

    if-eq v1, p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 1703
    :goto_3
    invoke-static {v2}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPosNextInt(I)I
    .locals 3

    .line 1652
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1653
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1655
    aget-char v1, v1, v0

    const v2, 0xb000

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    const p1, 0xc000

    sub-int/2addr v1, p1

    return v1

    :cond_0
    const v2, 0xf102

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1660
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    return p1

    .line 1662
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x3

    .line 1639
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1641
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public gotoAttributesStart(I)I
    .locals 3

    .line 1045
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 1046
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1047
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 1049
    :cond_1
    aget-char v0, v0, p1

    const v1, 0xa000

    if-lt v0, v1, :cond_2

    const v1, 0xafff

    if-le v0, v1, :cond_3

    :cond_2
    const v1, 0xf108

    if-ne v0, v1, :cond_4

    :cond_3
    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_4
    return v2
.end method

.method public gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 2

    .line 1030
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shl-int/2addr v0, v1

    .line 1033
    invoke-virtual {p1, p0, v0}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    return v1
.end method

.method public final gotoChildrenStart(I)I
    .locals 3

    .line 908
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_0

    return v2

    .line 910
    :cond_0
    aget-char v0, v0, p1

    const v1, 0xa000

    if-lt v0, v1, :cond_1

    const v1, 0xafff

    if-le v0, v1, :cond_2

    :cond_1
    const v1, 0xf108

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x3

    goto :goto_2

    :cond_3
    const v1, 0xf110

    if-eq v0, v1, :cond_5

    const v1, 0xf112

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x5

    .line 921
    :goto_2
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v0, :cond_6

    .line 922
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 923
    :cond_6
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf109

    if-ne v0, v1, :cond_8

    add-int/lit8 v0, p1, 0x3

    .line 926
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_7

    .line 927
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_7
    add-int/2addr p1, v0

    goto :goto_2

    :cond_8
    const v1, 0xf10a

    if-eq v0, v1, :cond_b

    const v1, 0xf116

    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_9
    const v1, 0xf118

    if-ne v0, v1, :cond_a

    goto :goto_0

    :cond_a
    return p1

    :cond_b
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2
.end method

.method public hasNext(I)Z
    .locals 3

    .line 1523
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1524
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 1526
    :cond_0
    aget-char p1, v0, p1

    const v0, 0xf10a

    if-eq p1, v0, :cond_1

    const v0, 0xf10b

    if-eq p1, v0, :cond_1

    const v0, 0xf10c

    if-eq p1, v0, :cond_1

    const v0, 0xf111

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 2298
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ignoring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 856
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 857
    :goto_0
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final nextDataIndex(I)I
    .locals 5

    .line 2173
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_0

    .line 2174
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2175
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 2178
    aget-char v3, v0, p1

    const v4, 0x9fff

    if-le v3, v4, :cond_b

    const v4, 0xe000

    if-lt v3, v4, :cond_2

    const v4, 0xefff

    if-le v3, v4, :cond_b

    :cond_2
    const v4, 0xb000

    if-lt v3, v4, :cond_3

    const v4, 0xdfff

    if-gt v3, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const v4, 0xa000

    if-lt v3, v4, :cond_4

    const v4, 0xafff

    if-gt v3, v4, :cond_4

    .line 2187
    aget-char p1, v0, v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 2243
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    add-int/lit8 v1, p1, 0x3

    :pswitch_2
    add-int/lit8 p1, v1, 0x2

    .line 2241
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :pswitch_3
    add-int/lit8 p1, p1, 0x5

    .line 2198
    :goto_0
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_5

    .line 2199
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2200
    :cond_5
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    if-ne p1, v1, :cond_6

    return v2

    .line 2202
    :cond_6
    aget-char v0, v0, p1

    const v1, 0xf113

    if-ne v0, v1, :cond_7

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 2204
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    goto :goto_0

    .line 2191
    :pswitch_4
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_8

    .line 2192
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_8
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_5
    add-int/lit8 p1, p1, 0x5

    return p1

    :pswitch_6
    return v2

    :pswitch_7
    add-int/lit8 v0, p1, 0x3

    .line 2230
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 2231
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_9
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2226
    :pswitch_8
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 2227
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_a
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    return v0

    :pswitch_9
    add-int/lit8 p1, p1, 0x2

    return p1

    :pswitch_a
    add-int/lit8 p1, p1, 0x5

    return p1

    :pswitch_b
    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_b
    :goto_1
    :pswitch_c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_2
    .end packed-switch
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 8

    .line 1998
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1999
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p3

    .line 2001
    instance-of v0, p2, Lgnu/lists/NodePredicate;

    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p0, p1, p3}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2007
    :goto_0
    instance-of v1, p2, Lgnu/lists/ElementPredicate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    .line 2013
    :cond_1
    instance-of v1, p2, Lgnu/lists/AttributePredicate;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 2028
    :goto_2
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v5, :cond_3

    .line 2029
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    :cond_3
    if-lt v0, p3, :cond_4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_4

    return v2

    .line 2033
    :cond_4
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v6, v5, v0

    const v7, 0x9fff

    if-le v6, v7, :cond_11

    const v7, 0xe000

    if-lt v6, v7, :cond_5

    const v7, 0xefff

    if-le v6, v7, :cond_11

    :cond_5
    const v7, 0xb000

    if-lt v6, v7, :cond_6

    const v7, 0xdfff

    if-gt v6, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const v7, 0xa000

    if-lt v6, v7, :cond_9

    const v7, 0xafff

    if-gt v6, v7, :cond_9

    if-eqz p4, :cond_7

    add-int/lit8 v5, v0, 0x3

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v0, 0x1

    .line 2145
    aget-char v5, v5, v6

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x2

    :goto_3
    if-eqz v4, :cond_8

    goto/16 :goto_7

    :cond_8
    move v0, v5

    goto :goto_2

    .line 2149
    :cond_9
    new-instance p1, Ljava/lang/Error;

    const-string p2, "unknown code:"

    .line 0
    invoke-static {v6, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2149
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :pswitch_2
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    .line 2121
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    goto/16 :goto_7

    :cond_a
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    .line 2125
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v1, :cond_8

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v5, v0, 0x5

    add-int/lit8 v6, v0, 0x3

    .line 2117
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    goto :goto_4

    :pswitch_6
    add-int/lit8 v0, v0, 0x5

    goto :goto_2

    :pswitch_7
    add-int/lit8 v5, v0, 0x5

    goto :goto_7

    :pswitch_8
    add-int/lit8 v5, v0, 0x5

    if-eqz v1, :cond_8

    goto :goto_7

    :pswitch_9
    if-nez p4, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, v0, 0x7

    goto/16 :goto_2

    :pswitch_a
    if-nez p4, :cond_c

    return v2

    :cond_c
    :pswitch_b
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :pswitch_c
    if-nez p4, :cond_a

    return v2

    :pswitch_d
    add-int/lit8 v5, v0, 0x3

    .line 2096
    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    if-gez v5, :cond_d

    .line 2097
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    :cond_d
    add-int/2addr v6, v0

    move v0, v6

    goto/16 :goto_2

    :pswitch_e
    if-eqz p4, :cond_e

    add-int/lit8 v5, v0, 0x3

    goto :goto_6

    :cond_e
    add-int/lit8 v5, v0, 0x1

    .line 2133
    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    if-gez v5, :cond_f

    .line 2134
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    goto :goto_5

    :cond_f
    move v6, v0

    :goto_5
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    :goto_6
    if-eqz v4, :cond_8

    goto :goto_7

    :pswitch_f
    add-int/lit8 v5, v0, 0x5

    if-eqz v1, :cond_8

    goto :goto_7

    :pswitch_10
    add-int/lit8 v5, v0, 0x3

    if-eqz v1, :cond_8

    goto :goto_7

    :pswitch_11
    add-int/lit8 v5, v0, 0x1

    if-eqz v1, :cond_8

    :goto_7
    if-le v0, p1, :cond_8

    shl-int/lit8 v6, v0, 0x1

    .line 2152
    invoke-interface {p2, p0, v6}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2154
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_10

    .line 2155
    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    :cond_10
    shl-int/lit8 p1, v0, 0x1

    return p1

    :cond_11
    :goto_8
    if-eqz v1, :cond_a

    shl-int/lit8 v5, v0, 0x1

    .line 2040
    invoke-interface {p2, p0, v5}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2042
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_12

    .line 2043
    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    :cond_12
    shl-int/lit8 p1, v0, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final nextNodeIndex(II)I
    .locals 3

    const/high16 v0, -0x80000000

    or-int/2addr v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1943
    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    .line 1946
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_1

    .line 1947
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    :cond_1
    if-lt p1, p2, :cond_2

    goto :goto_1

    .line 1950
    :cond_2
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0x9fff

    if-le v0, v1, :cond_7

    const v1, 0xe000

    if-lt v0, v1, :cond_3

    const v1, 0xefff

    if-le v0, v1, :cond_7

    :cond_3
    const v1, 0xb000

    if-lt v0, v1, :cond_4

    const v1, 0xdfff

    if-le v0, v1, :cond_7

    :cond_4
    const v1, 0xff00

    and-int/2addr v1, v0

    const v2, 0xf000

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    const v1, 0xa000

    if-lt v0, v1, :cond_6

    const v1, 0xafff

    if-gt v0, v1, :cond_6

    goto :goto_1

    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1989
    :pswitch_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    goto :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :pswitch_2
    add-int/lit8 p1, p1, 0x5

    goto :goto_0

    :goto_1
    :pswitch_3
    return p1

    :cond_7
    :goto_2
    :pswitch_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf108
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public nextPos(I)I
    .locals 2

    .line 2163
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 2164
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2166
    :cond_0
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt p1, v0, :cond_1

    .line 2167
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public parentOrEntityI(I)I
    .locals 4

    .line 960
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_0

    return v2

    .line 962
    :cond_0
    aget-char v1, v0, p1

    const v3, 0xf110

    if-eq v1, v3, :cond_c

    const v3, 0xf112

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0xa000

    if-lt v1, v3, :cond_3

    const v3, 0xafff

    if-gt v1, v3, :cond_3

    add-int/lit8 v1, p1, 0x2

    .line 974
    aget-char v0, v0, v1

    if-nez v0, :cond_2

    return v2

    :cond_2
    sub-int/2addr p1, v0

    return p1

    :cond_3
    const v0, 0xf108

    if-ne v1, v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    .line 979
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_4

    .line 980
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_4
    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x5

    .line 981
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    if-gez p1, :cond_6

    add-int/2addr p1, v0

    :cond_6
    return p1

    .line 990
    :cond_7
    :goto_0
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_8

    .line 991
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 992
    :cond_8
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    if-ne p1, v1, :cond_9

    return v2

    .line 994
    :cond_9
    aget-char v1, v0, p1

    const v3, 0xf111

    if-eq v1, v3, :cond_b

    packed-switch v1, :pswitch_data_0

    .line 1010
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    if-gez p1, :cond_7

    return v2

    :pswitch_0
    add-int/lit8 v0, p1, 0x3

    .line 1000
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_a

    add-int/2addr v0, p1

    :cond_a
    return v0

    :pswitch_1
    add-int/lit8 v1, p1, 0x1

    .line 998
    aget-char v0, v0, v1

    sub-int/2addr p1, v0

    return p1

    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    return v2

    :cond_c
    :goto_1
    add-int/lit8 v0, p1, 0x3

    .line 965
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-lt v0, v2, :cond_d

    return v0

    :cond_d
    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xf10a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parentOrEntityPos(I)I
    .locals 0

    .line 954
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public parentPos(I)I
    .locals 2

    .line 941
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 944
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 947
    :cond_1
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf112

    if-eq v0, v1, :cond_0

    shl-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final posToDataIndex(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 881
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    return p1

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 885
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v0, v1, :cond_2

    .line 886
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_2
    if-eqz p1, :cond_5

    .line 889
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    if-gez p1, :cond_3

    .line 891
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    return p1

    .line 892
    :cond_3
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_4

    .line 893
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    return v1

    :cond_4
    return p1

    :cond_5
    return v0
.end method

.method public final resizeObjects()V
    .locals 4

    .line 352
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 356
    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_0
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 362
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 363
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 365
    :goto_0
    iput-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    return-void
.end method

.method public setAttributeName(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 665
    invoke-virtual {p0, p1, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    return-void
.end method

.method public setElementName(II)V
    .locals 2

    .line 579
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf108

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 581
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 582
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_0
    add-int/2addr p1, v0

    .line 584
    :cond_1
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 586
    invoke-virtual {p0, p1, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    return-void

    .line 585
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "setElementName before gapEnd"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setIntN(II)V
    .locals 2

    .line 394
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-char p2, p2

    .line 395
    aput-char p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 866
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAttribute(I)V
    .locals 4

    const/4 v0, 0x6

    .line 651
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 652
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 653
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf109

    aput-char v3, v0, v1

    .line 654
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-nez v0, :cond_0

    .line 656
    iput v2, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 657
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 658
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x2

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 659
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 660
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v1, 0xf10a

    aput-char v1, p1, v0

    return-void

    .line 655
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "nested attribute"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 0

    .line 626
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->startAttribute(I)V

    return-void
.end method

.method public startDocument()V
    .locals 4

    const/4 v0, 0x6

    .line 500
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 501
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 502
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 503
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    const v3, 0xf110

    aput-char v3, v2, v1

    .line 504
    iget v3, p0, Lgnu/lists/TreeList;->docStart:I

    if-nez v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 506
    iput v3, p0, Lgnu/lists/TreeList;->docStart:I

    .line 507
    array-length v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v1, 0x3

    .line 508
    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sub-int v3, v2, v1

    :goto_0
    invoke-virtual {p0, v0, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v1, 0x5

    .line 510
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 511
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 512
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf111

    aput-char v2, v0, v1

    return-void

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nested document"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startElement(I)V
    .locals 5

    const/16 v0, 0xa

    .line 565
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 566
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 567
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf108

    aput-char v4, v1, v2

    .line 568
    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 569
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 570
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10c

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 571
    invoke-virtual {p0, v1, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 572
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 p1, p1, 0x3

    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 573
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 p1, p1, 0x5

    iget v0, p0, Lgnu/lists/TreeList;->currentParent:I

    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 574
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lgnu/lists/TreeList;->currentParent:I

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->startElement(I)V

    return-void
.end method

.method public statistics()V
    .locals 2

    .line 2308
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2309
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->statistics(Ljava/io/PrintWriter;)V

    .line 2310
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public statistics(Ljava/io/PrintWriter;)V
    .locals 2

    .line 2315
    const-string v0, "data array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2316
    const-string v0, "data array gap: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2317
    const-string v0, "object array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public stringValue(ILjava/lang/StringBuffer;)I
    .locals 1

    const v0, 0x7fffffff

    .line 1754
    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1757
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1761
    invoke-virtual {p0, v0, p1, p2}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result p1

    return p1
.end method

.method public stringValue(ZILjava/lang/StringBuffer;)I
    .locals 9

    .line 1768
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p2, v0, :cond_0

    .line 1769
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 1770
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p2, v1, :cond_1

    return v2

    .line 1772
    :cond_1
    aget-char v1, v0, p2

    add-int/lit8 v3, p2, 0x1

    const v4, 0x9fff

    if-gt v1, v4, :cond_2

    .line 1777
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v3

    :cond_2
    const v4, 0xe000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v1, v4, :cond_3

    const v7, 0xefff

    if-gt v1, v7, :cond_3

    .line 1785
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v1, v4

    aget-object p1, p1, v1

    goto/16 :goto_1

    :cond_3
    const v4, 0xa000

    const/4 v7, 0x0

    if-lt v1, v4, :cond_4

    const v4, 0xafff

    if-gt v1, v4, :cond_4

    add-int/lit8 v6, p2, 0x3

    .line 1792
    aget-char p1, v0, v3

    add-int/2addr p1, v3

    add-int/lit8 v3, p1, 0x1

    :goto_0
    :pswitch_0
    move-object p1, v7

    goto/16 :goto_1

    :cond_4
    const v4, 0xff00

    and-int/2addr v4, v1

    const v8, 0xf000

    if-ne v4, v8, :cond_5

    and-int/lit16 p1, v1, 0xff

    .line 1796
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return v3

    :cond_5
    const v4, 0xb000

    if-lt v1, v4, :cond_6

    const v4, 0xdfff

    if-gt v1, v4, :cond_6

    const p1, 0xc000

    sub-int/2addr v1, p1

    .line 1802
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return v3

    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 1896
    :pswitch_1
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unimplemented: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " at:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    add-int/lit8 p2, p2, 0x3

    return p2

    :pswitch_3
    add-int/lit8 v3, p2, 0x3

    .line 1817
    :pswitch_4
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p2

    add-int/lit8 v3, v3, 0x2

    if-eqz p1, :cond_7

    const p1, 0xf115

    if-ne v1, p1, :cond_8

    .line 1820
    :cond_7
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p3, p1, v3, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_8
    add-int/2addr v3, p2

    return v3

    :pswitch_5
    add-int/lit8 v6, p2, 0x5

    .line 1861
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    goto :goto_0

    .line 1887
    :pswitch_6
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    add-int/lit8 v1, p2, 0x3

    .line 1888
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1889
    check-cast v0, Lgnu/lists/TreeList;

    shr-int/2addr v1, v5

    invoke-virtual {v0, p1, v1, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    add-int/lit8 v3, p2, 0x5

    goto :goto_0

    :pswitch_7
    return v2

    :pswitch_8
    if-nez p1, :cond_9

    add-int/lit8 v6, p2, 0x5

    :cond_9
    add-int/lit8 p2, p2, 0x3

    .line 1882
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    if-gez p1, :cond_a

    .line 1883
    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    add-int/lit8 v3, p2, 0x1

    :cond_a
    add-int/2addr v3, p1

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v6, p2, 0x3

    .line 1866
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    if-gez p1, :cond_b

    .line 1867
    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    :cond_b
    add-int/2addr p1, p2

    add-int/lit8 v3, p1, 0x7

    goto/16 :goto_0

    :goto_1
    if-eqz p1, :cond_c

    .line 1900
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_c
    if-lez v6, :cond_e

    .line 1905
    :cond_d
    invoke-virtual {p0, v5, v6, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v6

    if-gez v6, :cond_d

    :cond_e
    return v3

    .line 1856
    :pswitch_a
    aget-char p1, v0, v3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1851
    :pswitch_b
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x5

    return p2

    .line 1845
    :pswitch_c
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x3

    return p2

    .line 1839
    :pswitch_d
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x5

    return p2

    .line 1833
    :pswitch_e
    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x3

    return p2

    :pswitch_f
    const p1, 0xf100

    if-eq v1, p1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v5, 0x0

    .line 1827
    :goto_2
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public stringValue(IILjava/lang/StringBuffer;)V
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 1749
    invoke-virtual {p0, v0, p1, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1292
    iget v3, v0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-lt v5, v3, :cond_1

    .line 1301
    iget v3, v0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v5, v3, :cond_0

    .line 1303
    iget v5, v0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1304
    iget-object v3, v0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v5, v3, :cond_1

    :cond_0
    return-void

    .line 1312
    :cond_1
    iget-object v8, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v9, v5, 0x1

    aget-char v10, v8, v5

    const v11, 0x9fff

    const/16 v12, 0x3e

    if-gt v10, v11, :cond_5

    :goto_2
    if-lt v9, v3, :cond_2

    goto :goto_3

    .line 1322
    :cond_2
    iget-object v7, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v9, 0x1

    aget-char v7, v7, v9

    if-le v7, v11, :cond_4

    :goto_3
    if-eqz v6, :cond_3

    .line 1329
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1330
    :cond_3
    iget-object v7, v0, Lgnu/lists/TreeList;->data:[C

    sub-int v8, v9, v5

    invoke-virtual {v2, v7, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v5, v9

    goto :goto_0

    :cond_4
    move v9, v8

    goto :goto_2

    :cond_5
    const v11, 0xe000

    const/4 v13, 0x1

    if-lt v10, v11, :cond_8

    const v14, 0xefff

    if-gt v10, v14, :cond_8

    if-eqz v6, :cond_6

    .line 1337
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_6
    if-eqz v7, :cond_7

    .line 1338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    const/4 v7, 0x1

    .line 1339
    :goto_4
    iget-object v5, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v10, v11

    aget-object v5, v5, v10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_5
    :pswitch_0
    move v5, v9

    goto :goto_1

    :cond_8
    const/16 v11, 0x3c

    const v14, 0xa000

    if-lt v10, v14, :cond_b

    const v15, 0xafff

    if-gt v10, v15, :cond_b

    if-eqz v6, :cond_9

    .line 1345
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    sub-int/2addr v10, v14

    if-eqz v7, :cond_a

    .line 1347
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    :cond_a
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1349
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x3

    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    const v15, 0xb000

    if-lt v10, v15, :cond_e

    const v15, 0xdfff

    if-gt v10, v15, :cond_e

    if-eqz v6, :cond_c

    .line 1358
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_c
    if-eqz v7, :cond_d

    .line 1359
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_d
    const/4 v7, 0x1

    :goto_7
    const v5, 0xc000

    sub-int/2addr v10, v5

    .line 1360
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_e
    const/16 v15, 0x20

    packed-switch v10, :pswitch_data_0

    .line 1516
    :pswitch_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unknown code:"

    .line 0
    invoke-static {v10, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1516
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_8
    :pswitch_2
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :pswitch_3
    if-eqz v6, :cond_f

    .line 1373
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1374
    :cond_f
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    add-int/lit8 v5, v5, 0x3

    .line 1376
    const-string v9, "<!--"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    iget-object v9, v0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {v2, v9, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1378
    const-string v9, "-->"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    add-int/2addr v5, v8

    goto/16 :goto_1

    :pswitch_4
    if-eqz v6, :cond_10

    .line 1382
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1383
    :cond_10
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    add-int/lit8 v5, v5, 0x3

    .line 1385
    const-string v9, "<![CDATA["

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    iget-object v9, v0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {v2, v9, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1387
    const-string v9, "]]>"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_5
    if-eqz v6, :cond_11

    .line 1391
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1392
    :cond_11
    const-string v8, "<?"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x3

    .line 1395
    iget-object v10, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v8, v10, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1396
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    add-int/lit8 v5, v5, 0x5

    if-lez v8, :cond_12

    .line 1400
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1401
    iget-object v9, v0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {v2, v9, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/2addr v5, v8

    .line 1404
    :cond_12
    const-string v8, "?>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :goto_a
    :pswitch_6
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_1

    :pswitch_7
    if-eqz v6, :cond_13

    .line 1424
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_13
    if-eqz v7, :cond_14

    .line 1425
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_14
    const/4 v7, 0x1

    .line 1427
    :goto_b
    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    aget-object v8, v8, v9

    check-cast v8, Lgnu/lists/AbstractSequence;

    add-int/lit8 v9, v5, 0x3

    .line 1428
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    .line 1430
    invoke-virtual {v8, v9}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_8
    if-eqz v6, :cond_15

    .line 1436
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_15
    if-eqz v7, :cond_16

    .line 1437
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_16
    const/4 v7, 0x1

    .line 1438
    :goto_c
    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_9
    const v7, 0xf10b

    if-ne v10, v7, :cond_17

    add-int/lit8 v7, v5, 0x2

    .line 1457
    aget-char v9, v8, v9

    sub-int/2addr v5, v9

    .line 1458
    aget-char v5, v8, v5

    sub-int/2addr v5, v14

    goto :goto_d

    .line 1462
    :cond_17
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    add-int/lit8 v5, v5, 0x7

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    :goto_d
    if-eqz v6, :cond_18

    .line 1466
    const-string v5, "/>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 1469
    :cond_18
    const-string v6, "</"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1471
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    move v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :pswitch_a
    const/16 v5, 0x22

    .line 1486
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v9

    goto/16 :goto_6

    .line 1477
    :pswitch_b
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    .line 1478
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1479
    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v8, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1480
    const-string v6, "=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x5

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1442
    :pswitch_c
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    if-ltz v8, :cond_19

    move v9, v5

    goto :goto_f

    .line 1443
    :cond_19
    iget-object v9, v0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_f
    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v8, v13

    .line 1445
    invoke-virtual {v0, v8}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    if-eqz v6, :cond_1a

    .line 1446
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1a
    if-eqz v7, :cond_1b

    .line 1447
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    :cond_1b
    :goto_10
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1449
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :pswitch_d
    if-eqz v6, :cond_1c

    .line 1418
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1419
    :cond_1c
    iget-object v7, v0, Lgnu/lists/TreeList;->data:[C

    const v8, -0xf105

    add-int/2addr v10, v8

    invoke-virtual {v2, v7, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    :pswitch_e
    if-eqz v6, :cond_1d

    .line 1510
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_1d
    if-eqz v7, :cond_1e

    .line 1511
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_1e
    const/4 v7, 0x1

    .line 1512
    :goto_11
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_f
    if-eqz v6, :cond_1f

    .line 1498
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_1f
    if-eqz v7, :cond_20

    .line 1499
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_20
    const/4 v7, 0x1

    .line 1500
    :goto_12
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_10
    if-eqz v6, :cond_21

    .line 1504
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_21
    if-eqz v7, :cond_22

    .line 1505
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_22
    const/4 v7, 0x1

    .line 1506
    :goto_13
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_11
    if-eqz v6, :cond_23

    .line 1492
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_23
    if-eqz v7, :cond_24

    .line 1493
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_24
    const/4 v7, 0x1

    .line 1494
    :goto_14
    invoke-virtual {v0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_12
    if-eqz v6, :cond_25

    .line 1411
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :cond_25
    if-eqz v7, :cond_26

    .line 1412
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_26
    const/4 v7, 0x1

    :goto_15
    const v5, 0xf100

    if-eq v10, v5, :cond_27

    goto :goto_16

    :cond_27
    const/4 v13, 0x0

    .line 1413
    :goto_16
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public write(I)V
    .locals 4

    const/4 v0, 0x3

    .line 689
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    const v0, 0x9fff

    if-gt p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf106

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 695
    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char p1, p1

    aput-char p1, v0, v2

    return-void

    .line 698
    :cond_1
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 4

    if-nez p3, :cond_0

    .line 798
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 799
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    :goto_0
    if-lez p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 802
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 p3, p3, -0x1

    const v1, 0x9fff

    if-gt p2, v1, :cond_1

    .line 805
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_1

    .line 808
    :cond_1
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 809
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/TreeList;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public write([CII)V
    .locals 4

    if-nez p3, :cond_0

    .line 770
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 771
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    :goto_0
    if-lez p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 774
    aget-char p2, p1, p2

    add-int/lit8 p3, p3, -0x1

    const v1, 0x9fff

    if-gt p2, v1, :cond_1

    .line 777
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_1

    .line 780
    :cond_1
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 781
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 704
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz p1, :cond_0

    const p1, 0xf101

    goto :goto_0

    :cond_0
    const p1, 0xf100

    :goto_0
    aput-char p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 3

    const/4 v0, 0x1

    .line 709
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 710
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    and-int/lit16 p1, p1, 0xff

    const v2, 0xf000

    add-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method public writeCDATA([CII)V
    .locals 4

    add-int/lit8 v0, p3, 0x3

    .line 816
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 817
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 818
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    const v3, 0xf115

    aput-char v3, v1, v0

    .line 819
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v0, 0x3

    .line 821
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    .line 822
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeComment(Ljava/lang/String;II)V
    .locals 4

    add-int/lit8 v0, p3, 0x3

    .line 456
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 457
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 458
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    const v3, 0xf117

    aput-char v3, v1, v0

    .line 459
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v0, 0x3

    add-int v1, p2, p3

    .line 461
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p3

    .line 462
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeComment([CII)V
    .locals 4

    add-int/lit8 v0, p3, 0x3

    .line 445
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 446
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 447
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    const v3, 0xf117

    aput-char v3, v1, v0

    .line 448
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v0, 0x3

    .line 450
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    .line 451
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    .line 436
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 437
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    .line 438
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf118

    aput-char v3, v0, v1

    .line 439
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 440
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    const/4 v0, 0x5

    .line 747
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 748
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 749
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf105

    aput-char v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 750
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 751
    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 752
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v3

    add-int/2addr v2, v0

    .line 753
    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int p2, p1

    int-to-char p1, p2

    aput-char p1, v1, v4

    return-void
.end method

.method public writeFloat(F)V
    .locals 6

    const/4 v0, 0x3

    .line 738
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 739
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 740
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf104

    aput-char v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 741
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    ushr-int/lit8 v5, p1, 0x10

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/2addr v2, v0

    .line 742
    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char p1, p1

    aput-char p1, v1, v4

    return-void
.end method

.method public writeInt(I)V
    .locals 4

    const/4 v0, 0x3

    .line 715
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    const/16 v0, -0x1000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1fff

    if-gt p1, v0, :cond_0

    .line 717
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xc000

    add-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf102

    aput-char v3, v0, v1

    .line 721
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 722
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeJoiner()V
    .locals 3

    const/4 v0, 0x1

    .line 763
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 764
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf116

    aput-char v2, v0, v1

    return-void
.end method

.method public writeLong(J)V
    .locals 7

    const/4 v0, 0x5

    .line 728
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 729
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf103

    aput-char v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 730
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 731
    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v2, 0x4

    .line 732
    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v3

    add-int/2addr v2, v0

    .line 733
    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int p2, p1

    int-to-char p1, p2

    aput-char p1, v1, v4

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    .line 420
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 421
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    const/16 v0, 0x1000

    if-ge p1, v0, :cond_0

    .line 423
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xe000

    or-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10d

    aput-char v3, v0, v1

    .line 427
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 428
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 4

    const/4 v0, 0x5

    .line 410
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 411
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10f

    aput-char v3, v1, v2

    .line 412
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    .line 413
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 414
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 415
    iget p1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/2addr p1, v0

    iput p1, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    add-int/lit8 v0, p4, 0x5

    .line 482
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 483
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 484
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    const v3, 0xf114

    aput-char v3, v1, v0

    .line 485
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    .line 486
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 p1, v0, 0x3

    .line 487
    invoke-virtual {p0, p1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v0, 0x5

    add-int p1, p3, p4

    .line 489
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, p3, p1, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p4

    .line 490
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 4

    add-int/lit8 v0, p4, 0x5

    .line 468
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 469
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 470
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    const v3, 0xf114

    aput-char v3, v1, v0

    .line 471
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result p1

    .line 472
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 p1, v0, 0x3

    .line 473
    invoke-virtual {p0, p1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    add-int/lit8 v0, v0, 0x5

    .line 475
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p4

    .line 476
    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    return-void
.end method
