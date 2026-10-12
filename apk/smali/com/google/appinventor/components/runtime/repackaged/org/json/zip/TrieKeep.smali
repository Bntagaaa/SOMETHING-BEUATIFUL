.class Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    }
.end annotation


# instance fields
.field private froms:[I

.field private kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

.field private root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

.field private thrus:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;-><init>(I)V

    .line 186
    iget p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    .line 187
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    .line 188
    new-array p1, p1, [Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 189
    new-instance p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    return-void
.end method


# virtual methods
.method public kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aget-object v0, v0, p1

    .line 200
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v1, v1, p1

    .line 201
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v2, v2, p1

    if-nez v1, :cond_1

    .line 202
    iget v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 203
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)V

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    iget v1, v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    aput v1, v0, p1

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object v3, v0, p1

    return-object v3
.end method

.method public length(I)I
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget p1, v1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public match(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    if-ge p2, p3, :cond_2

    .line 234
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->get(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 239
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 8

    .line 248
    check-cast p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    .line 249
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    iget v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    const-string v2, " <> "

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\nLength "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v3

    .line 253
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    iget v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    if-eq v0, v1, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\nCapacity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 258
    :goto_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    if-ge v1, v5, :cond_3

    .line 259
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object v5

    .line 260
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object v6

    .line 261
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "\n["

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, "] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 266
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v3
.end method

.method public registerMany(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V
    .locals 11

    .line 270
    iget v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 271
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    sub-int/2addr v1, v2

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    const/16 v1, 0x28

    :cond_0
    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    sub-int v4, v0, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    const/16 v4, 0xa

    :cond_1
    add-int/2addr v4, v3

    .line 282
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_3

    .line 284
    invoke-virtual {p1, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v5

    .line 285
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    sub-int v7, v6, v3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 287
    iget v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    invoke-static {v5, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 288
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->uses:[J

    iget v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    const-wide/16 v9, 0x1

    aput-wide v9, v7, v8

    .line 289
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object p1, v7, v8

    .line 290
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aput v3, v7, v8

    .line 291
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    add-int/lit8 v9, v6, 0x1

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    .line 299
    iput v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I
    .locals 4

    .line 318
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 324
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    .line 325
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->uses:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object p1, v0, v1

    .line 328
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aput p2, p1, v1

    .line 329
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput p3, p1, v1

    .line 336
    iget p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    return v1

    :cond_1
    return v2
.end method

.method public registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V
    .locals 2

    .line 311
    iget v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object p1, v1, v0

    :cond_0
    return-void
.end method

.method public reserve()V
    .locals 9

    .line 350
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    sub-int/2addr v0, v1

    const/16 v1, 0x28

    if-ge v0, v1, :cond_4

    .line 353
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 354
    :goto_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    if-ge v2, v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->uses:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x1

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aget-object v4, v4, v2

    .line 357
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v5, v5, v2

    .line 358
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 359
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v7, v7, v2

    :goto_1
    if-ge v7, v5, :cond_0

    .line 360
    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 363
    :cond_0
    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 364
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->uses:[J

    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->age(J)J

    move-result-wide v7

    aput-wide v7, v6, v3

    .line 365
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v7, v6, v2

    aput v7, v6, v3

    .line 366
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput v5, v6, v3

    .line 367
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v4, v3

    if-ge v4, v1, :cond_3

    .line 377
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->power:I

    .line 378
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    const/4 v3, 0x0

    .line 381
    :cond_3
    iput v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    .line 382
    :goto_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->capacity:I

    if-ge v3, v1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->uses:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 384
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 385
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aput v0, v1, v3

    .line 386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object p1

    return-object p1
.end method
