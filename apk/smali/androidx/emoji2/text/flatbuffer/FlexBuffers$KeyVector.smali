.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .locals 3

    .line 1050
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 741
    sget-object p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    return-object p1

    .line 1052
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    iget v2, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    mul-int p1, p1, v2

    add-int/2addr p1, v1

    .line 1053
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    invoke-static {v2, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result p1

    const/4 v0, 0x1

    .line 746
    invoke-direct {v1, v2, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1062
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1071
    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1072
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1074
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
