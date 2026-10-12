.class final Lcom/google/thirdparty/publicsuffix/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/a;->a:Lcom/google/common/base/Joiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/LinkedList;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I
    .locals 12

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x3a

    const/16 v5, 0x21

    const/16 v6, 0x2c

    const/16 v7, 0x3f

    if-ge v2, v0, :cond_1

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x26

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v8

    .line 70
    invoke-interface {p0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eq v3, v5, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v3, v4, :cond_2

    if-ne v3, v6, :cond_6

    .line 77
    :cond_2
    sget-object v4, Lcom/google/thirdparty/publicsuffix/a;->a:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 58
    invoke-static {}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v5

    array-length v8, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_5

    aget-object v10, v5, v9

    .line 53
    iget-char v11, v10, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->a:C

    if-eq v11, v3, :cond_4

    .line 59
    iget-char v11, v10, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->b:C

    if-ne v11, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 79
    :cond_4
    :goto_3
    invoke-virtual {p3, v4, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_4

    .line 63
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No enum corresponding to given code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v7, :cond_9

    if-eq v3, v6, :cond_9

    :cond_7
    if-ge v2, v0, :cond_9

    .line 87
    invoke-static {p0, p1, v2, p3}, Lcom/google/thirdparty/publicsuffix/a;->a(Ljava/util/LinkedList;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_9
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int/2addr v2, p2

    return v2
.end method

.method public static b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;
    .locals 4

    .line 33
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lcom/google/thirdparty/publicsuffix/a;->a(Ljava/util/LinkedList;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method
