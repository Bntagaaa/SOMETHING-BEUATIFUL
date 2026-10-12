.class final Lcom/google/common/base/CharMatcher$n;
.super Lcom/google/common/base/CharMatcher$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1655
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$h;-><init>()V

    .line 1656
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .line 1666
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final d(Ljava/util/BitSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1677
    iget-char v1, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    add-int/lit8 v1, v1, 0x1

    const/high16 v0, 0x10000

    .line 1678
    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public matches(C)Z
    .locals 1

    .line 1661
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .line 1683
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .line 1671
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/common/base/CharMatcher;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.isNot(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$n;->a:C

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
