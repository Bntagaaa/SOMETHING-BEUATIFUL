.class abstract Lcom/google/common/base/Splitter$e;
.super Lcom/google/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/CharSequence;

.field public final d:Lcom/google/common/base/CharMatcher;

.field public final e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lcom/google/common/base/Splitter$e;->f:I

    .line 100
    iget-object v0, p1, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 544
    iput-object v0, p0, Lcom/google/common/base/Splitter$e;->d:Lcom/google/common/base/CharMatcher;

    .line 545
    iget-boolean v0, p1, Lcom/google/common/base/Splitter;->b:Z

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$e;->e:Z

    .line 546
    iget p1, p1, Lcom/google/common/base/Splitter;->d:I

    iput p1, p0, Lcom/google/common/base/Splitter$e;->g:I

    .line 547
    iput-object p2, p0, Lcom/google/common/base/Splitter$e;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$e;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/lang/String;
    .locals 7

    .line 557
    iget v0, p0, Lcom/google/common/base/Splitter$e;->f:I

    .line 558
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$e;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 562
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$e;->separatorStart(I)I

    move-result v1

    .line 563
    iget-object v3, p0, Lcom/google/common/base/Splitter$e;->c:Ljava/lang/CharSequence;

    if-ne v1, v2, :cond_1

    .line 564
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 565
    iput v2, p0, Lcom/google/common/base/Splitter$e;->f:I

    goto :goto_1

    .line 568
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$e;->separatorEnd(I)I

    move-result v4

    iput v4, p0, Lcom/google/common/base/Splitter$e;->f:I

    .line 570
    :goto_1
    iget v4, p0, Lcom/google/common/base/Splitter$e;->f:I

    if-ne v4, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 577
    iput v4, p0, Lcom/google/common/base/Splitter$e;->f:I

    .line 578
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v4, v1, :cond_0

    .line 579
    iput v2, p0, Lcom/google/common/base/Splitter$e;->f:I

    goto :goto_0

    .line 584
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/google/common/base/Splitter$e;->d:Lcom/google/common/base/CharMatcher;

    if-ge v0, v1, :cond_3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    add-int/lit8 v5, v1, -0x1

    .line 587
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 591
    :cond_4
    iget-boolean v5, p0, Lcom/google/common/base/Splitter$e;->e:Z

    if-eqz v5, :cond_5

    if-ne v0, v1, :cond_5

    .line 593
    iget v0, p0, Lcom/google/common/base/Splitter$e;->f:I

    goto :goto_0

    .line 597
    :cond_5
    iget v5, p0, Lcom/google/common/base/Splitter$e;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 601
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 602
    iput v2, p0, Lcom/google/common/base/Splitter$e;->f:I

    :goto_4
    if-le v1, v0, :cond_7

    add-int/lit8 v2, v1, -0x1

    .line 604
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v5, v6

    .line 608
    iput v5, p0, Lcom/google/common/base/Splitter$e;->g:I

    .line 611
    :cond_7
    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 613
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/base/b;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract separatorEnd(I)I
.end method

.method public abstract separatorStart(I)I
.end method
