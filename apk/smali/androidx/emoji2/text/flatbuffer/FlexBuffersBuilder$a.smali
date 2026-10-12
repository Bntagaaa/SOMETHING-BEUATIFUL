.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;

    return-void
.end method


# virtual methods
.method public compare(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)I
    .locals 2

    .line 97
    iget p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    .line 98
    iget p2, p2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;->a:Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;

    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    .line 101
    invoke-interface {v1, p1}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v1

    .line 51
    iget-object v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    .line 102
    invoke-interface {v0, p2}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v0

    if-nez v1, :cond_1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    if-eq v1, v0, :cond_0

    sub-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    check-cast p2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;->compare(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)I

    move-result p1

    return p1
.end method
