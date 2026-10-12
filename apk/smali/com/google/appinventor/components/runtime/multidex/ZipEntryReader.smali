.class Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CENSIG:J = 0x2014b50L

.field private static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field private static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTime(II)J
    .locals 7

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v1, p1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p1, 0x1f

    shr-int/lit8 p1, p0, 0xb

    and-int/lit8 v4, p1, 0x1f

    shr-int/lit8 p1, p0, 0x5

    and-int/lit8 v5, p1, 0x3f

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 v6, p0, 0x1

    .line 114
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readEntry(Ljava/nio/ByteBuffer;)Ljava/util/zip/ZipEntry;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x2014b50    # 1.6619997E-316

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int v3, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v3, v2

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v2

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-long v11, v11

    and-long/2addr v7, v11

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    and-int/2addr v11, v2

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    and-int/2addr v12, v2

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    and-int/2addr v2, v13

    const/16 v13, 0x2a

    .line 78
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 81
    new-array v13, v11, [B

    const/4 v14, 0x0

    .line 82
    invoke-virtual {v0, v13, v14, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 83
    new-instance v15, Ljava/lang/String;

    move/from16 v16, v12

    sget-object v12, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v13, v14, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 85
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v11, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 87
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->getTime(II)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 89
    invoke-virtual {v11, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 90
    invoke-virtual {v11, v9, v10}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 91
    invoke-virtual {v11, v7, v8}, Ljava/util/zip/ZipEntry;->setSize(J)V

    if-lez v2, :cond_0

    .line 96
    new-array v1, v2, [B

    .line 97
    invoke-virtual {v0, v1, v14, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v14, v2, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    :cond_0
    if-lez v16, :cond_1

    move/from16 v1, v16

    .line 102
    new-array v2, v1, [B

    .line 103
    invoke-virtual {v0, v2, v14, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v11, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    :cond_1
    return-object v11

    .line 61
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Invalid General Purpose Bit Flag: "

    .line 0
    invoke-static {v3, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Central Directory Entry not found"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
