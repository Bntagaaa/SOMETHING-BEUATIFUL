.class final Lcom/google/common/base/CharMatcher$e;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;Ljava/lang/String;)V
    .locals 1

    .line 986
    invoke-direct {p0, p2}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x40

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 988
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    .line 991
    :cond_0
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$e;->b:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/BitSet;)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$e;->b:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public matches(C)Z
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$e;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method
