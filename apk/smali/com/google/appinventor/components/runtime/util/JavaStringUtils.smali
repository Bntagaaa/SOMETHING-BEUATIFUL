.class public Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG_JOIN_STRINGS:Ljava/lang/String; = "JavaJoinListOfStrings"

.field private static final mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final rangeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 167
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 362
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 366
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 369
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 375
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 381
    new-instance v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    invoke-direct {v5, v3, v4, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;-><init>(IILjava/lang/String;)V

    .line 382
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    .line 398
    iget v0, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->text:Ljava/lang/String;

    .line 400
    iget p2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-static {v0, v1, p0}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 194
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p2, v1, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;->changeOrder(Ljava/util/List;Ljava/lang/String;)V

    .line 325
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsDictionaryOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsEarliestOccurrenceOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsLongestStringOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 214
    const-string p0, ""

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method
