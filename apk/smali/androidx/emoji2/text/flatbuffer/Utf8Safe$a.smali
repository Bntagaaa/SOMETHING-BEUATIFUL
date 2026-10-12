.class Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/Utf8Safe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 448
    const-string v0, "Unpaired surrogate at index "

    const-string v1, " of "

    .line 0
    invoke-static {p1, p2, v0, v1}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
