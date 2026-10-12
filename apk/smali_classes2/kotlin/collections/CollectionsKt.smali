.class public final Lkotlin/collections/CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsKt;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/collections/k",
        "kotlin/collections/CollectionsKt__CollectionsKt",
        "kotlin/collections/l",
        "kotlin/collections/CollectionsKt__IteratorsJVMKt",
        "kotlin/collections/m",
        "kotlin/collections/n",
        "kotlin/collections/o",
        "kotlin/collections/p",
        "kotlin/collections/q",
        "kotlin/collections/CollectionsKt___CollectionsKt"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic d(Ljava/util/Collection;Ljava/lang/Iterable;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/o;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void
.end method

.method public static bridge synthetic e(Ljava/util/Collection;Lkotlin/sequences/Sequence;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/o;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    return-void
.end method

.method public static bridge synthetic f(Ljava/util/List;Lokio/ByteString;)I
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Ljava/lang/Iterable;)I
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/l;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lkotlin/text/MatcherMatchResult$groups$1;)Lkotlin/ranges/IntRange;
    .locals 0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/Appendable;
    .locals 10

    const/16 v8, 0x7c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/collections/a;I)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/ArrayList;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lkotlin/collections/o;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic o(Ljava/util/EnumSet;Lkotlin/text/Regex$special$$inlined$fromInt$1;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/o;->retainAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public static bridge synthetic p(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/util/List;Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/ArrayList;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/lang/Iterable;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
