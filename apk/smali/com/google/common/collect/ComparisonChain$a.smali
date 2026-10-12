.class final Lcom/google/common/collect/ComparisonChain$a;
.super Lcom/google/common/collect/ComparisonChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(I)V

    return-void
.end method

.method public static a(I)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    if-gez p0, :cond_0

    .line 60
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->b:Lcom/google/common/collect/ComparisonChain;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    .line 60
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->c:Lcom/google/common/collect/ComparisonChain;

    return-object p0

    .line 60
    :cond_1
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    return-object p0
.end method


# virtual methods
.method public compare(DD)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 99
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(FF)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(II)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 89
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 73
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    .line 79
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 109
    invoke-static {p1, p2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 104
    invoke-static {p2, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/ComparisonChain$a;->a(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public result()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
