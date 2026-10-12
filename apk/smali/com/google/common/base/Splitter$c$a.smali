.class Lcom/google/common/base/Splitter$c$a;
.super Lcom/google/common/base/Splitter$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$c;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/common/base/Splitter$c;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/Splitter$c;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$e;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0

    return p1
.end method

.method public separatorStart(I)I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/Splitter$c;

    iget v0, v0, Lcom/google/common/base/Splitter$c;->a:I

    add-int/2addr p1, v0

    .line 290
    iget-object v0, p0, Lcom/google/common/base/Splitter$e;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
