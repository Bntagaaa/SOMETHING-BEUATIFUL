.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedVector"
.end annotation


# static fields
.field public static final f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 986
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 45
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    const/4 v2, 0x1

    .line 986
    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/a;III)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/a;III)V
    .locals 0

    .line 928
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    .line 992
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->e:I

    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
    .locals 1

    .line 996
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 7

    .line 1025
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 224
    sget-object p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    return-object p1

    .line 1027
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    mul-int p1, p1, v0

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    add-int v3, p1, v0

    .line 1028
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    const/4 v5, 0x1

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->e:I

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/a;IIII)V

    return-object v1
.end method

.method public getElemType()I
    .locals 1

    .line 1014
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->e:I

    return v0
.end method

.method public isEmptyVector()Z
    .locals 1

    .line 1005
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
