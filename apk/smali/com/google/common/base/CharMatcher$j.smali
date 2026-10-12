.class final Lcom/google/common/base/CharMatcher$j;
.super Lcom/google/common/base/CharMatcher$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public final a:C

.field public final b:C


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    .line 1765
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$h;-><init>()V

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1766
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1767
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$j;->a:C

    .line 1768
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$j;->b:C

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/BitSet;)V
    .locals 2

    .line 1779
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$j;->b:C

    add-int/lit8 v0, v0, 0x1

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$j;->a:C

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public matches(C)Z
    .locals 1

    .line 1773
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$j;->a:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$j;->b:C

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.inRange(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$j;->a:C

    .line 1785
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$j;->b:C

    .line 1787
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
