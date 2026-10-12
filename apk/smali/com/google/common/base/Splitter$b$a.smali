.class Lcom/google/common/base/Splitter$b$a;
.super Lcom/google/common/base/Splitter$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$b;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/common/base/Splitter$b;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$b;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$e;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    iget-object v0, v0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    iget-object v1, v0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/google/common/base/Splitter$e;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-gt p1, v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    add-int v5, v4, p1

    .line 185
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, v0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
