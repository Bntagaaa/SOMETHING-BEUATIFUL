.class abstract Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/flatbuffer/a;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/a;II)V
    .locals 0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Landroidx/emoji2/text/flatbuffer/a;

    .line 639
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->b:I

    .line 640
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method
