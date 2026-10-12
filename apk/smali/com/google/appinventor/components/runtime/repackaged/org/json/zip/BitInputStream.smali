.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;


# static fields
.field static final mask:[I


# instance fields
.field private available:I

.field private in:Ljava/io/InputStream;

.field private nrBits:J

.field private unread:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    .line 86
    iput p2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    const/16 p1, 0x8

    .line 87
    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    return-void
.end method


# virtual methods
.method public bit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->read(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nrBits()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    return-wide v0
.end method

.method public pad(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr p1, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->bit()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public read(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_5

    const/16 v1, 0x20

    if-gt p1, v1, :cond_5

    :goto_0
    if-lez p1, :cond_4

    .line 150
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    if-ltz v1, :cond_1

    const/16 v1, 0x8

    .line 155
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    goto :goto_1

    .line 153
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to read past end."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    if-le p1, v1, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, p1

    .line 161
    :goto_2
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    sub-int v4, v1, v2

    ushr-int/2addr v3, v4

    sget-object v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->mask:[I

    aget v4, v4, v2

    and-int/2addr v3, v4

    sub-int/2addr p1, v2

    shl-int/2addr v3, p1

    or-int/2addr v0, v3

    .line 163
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    sub-int/2addr v1, v2

    .line 164
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    goto :goto_0

    :cond_4
    return v0

    .line 146
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad read width."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
