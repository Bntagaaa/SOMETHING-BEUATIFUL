.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field public static final d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 925
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 45
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    const/4 v2, 0x1

    .line 928
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    .line 925
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .locals 1

    .line 936
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 10

    .line 971
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 224
    sget-object p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    return-object p1

    .line 975
    :cond_0
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    int-to-long v5, v4

    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    int-to-long v8, v7

    mul-long v0, v0, v8

    add-long/2addr v0, v5

    add-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int p1, p1, v7

    add-int/2addr p1, v4

    .line 977
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    invoke-direct {v2, v0, p1, v7, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/a;III)V

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 944
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 952
    const-string v0, "[ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 955
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 957
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 960
    :cond_1
    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method
