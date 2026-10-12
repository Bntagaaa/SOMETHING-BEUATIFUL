.class Lcom/google/common/base/o$a;
.super Lcom/google/common/base/Splitter$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/o;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/common/base/d;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/d;)V
    .locals 0

    .line 229
    iput-object p3, p0, Lcom/google/common/base/o$a;->h:Lcom/google/common/base/d;

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Splitter$e;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/google/common/base/o$a;->h:Lcom/google/common/base/d;

    invoke-virtual {p1}, Lcom/google/common/base/d;->end()I

    move-result p1

    return p1
.end method

.method public separatorStart(I)I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/common/base/o$a;->h:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/base/d;->start()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
