.class abstract Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field protected final size:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/a;II)V
    .locals 0

    .line 657
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    sub-int/2addr p2, p3

    .line 172
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide p1

    long-to-int p2, p1

    .line 658
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size:I

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 662
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size:I

    return v0
.end method
