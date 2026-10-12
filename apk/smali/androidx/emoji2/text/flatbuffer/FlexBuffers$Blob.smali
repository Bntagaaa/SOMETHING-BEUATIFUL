.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field public static final d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 674
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    .line 45
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    const/4 v2, 0x1

    .line 677
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    .line 674
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .locals 1

    .line 682
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    return-object v0
.end method


# virtual methods
.method public data()Ljava/nio/ByteBuffer;
    .locals 3

    .line 690
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/a;->data()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 691
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 692
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 693
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)B
    .locals 1

    .line 715
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {p1, v0}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 5

    .line 701
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v0

    .line 702
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 704
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {v4, v3}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 673
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 723
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {v2, v0, v1}, Landroidx/emoji2/text/flatbuffer/a;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    const/16 v0, 0x22

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/a;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method
