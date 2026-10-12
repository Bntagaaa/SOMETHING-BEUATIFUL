.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$e;,
        Lcom/google/common/base/Splitter$f;,
        Lcom/google/common/base/Splitter$MapSplitter;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/CharMatcher;

.field public final b:Z

.field public final c:Lcom/google/common/base/Splitter$f;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$f;)V
    .locals 3

    .line 107
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;ZLcom/google/common/base/CharMatcher;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Splitter$f;ZLcom/google/common/base/CharMatcher;I)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$f;

    .line 112
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->b:Z

    .line 113
    iput-object p3, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 114
    iput p4, p0, Lcom/google/common/base/Splitter;->d:I

    return-void
.end method

.method public static fixedLength(I)Lcom/google/common/base/Splitter;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 282
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$c;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$c;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;)V

    return-object v0
.end method

.method public static on(C)Lcom/google/common/base/Splitter;
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$a;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$a;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0

    .line 173
    :cond_1
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$b;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;)V

    return-object v0
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 215
    new-instance v0, Lcom/google/common/base/h;

    invoke-direct {v0, p0}, Lcom/google/common/base/h;-><init>(Ljava/util/regex/Pattern;)V

    .line 219
    const-string p0, ""

    .line 220
    invoke-virtual {v0, p0}, Lcom/google/common/base/h;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/d;->matches()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    .line 219
    invoke-static {p0, v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance p0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/o;

    invoke-direct {v1, v0}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/e;)V

    invoke-direct {p0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;)V

    return-object p0
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 258
    sget-object v0, Lcom/google/common/base/l;->a:Lcom/google/common/base/l$b;

    .line 73
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/common/base/l;->a:Lcom/google/common/base/l$b;

    invoke-interface {v0, p0}, Lcom/google/common/base/k;->compile(Ljava/lang/String;)Lcom/google/common/base/e;

    move-result-object p0

    .line 219
    const-string v0, ""

    .line 220
    invoke-virtual {p0, v0}, Lcom/google/common/base/e;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/d;->matches()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    .line 219
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/o;

    invoke-direct {v1, p0}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/e;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;)V

    return-object v0
.end method


# virtual methods
.method public limit(I)Lcom/google/common/base/Splitter;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    const-string v1, "must be greater than zero: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 340
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    iget-object v2, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$f;

    iget-boolean v3, p0, Lcom/google/common/base/Splitter;->b:Z

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public omitEmptyStrings()Lcom/google/common/base/Splitter;
    .locals 5

    .line 319
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    iget v2, p0, Lcom/google/common/base/Splitter;->d:I

    iget-object v3, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$f;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v0, Lcom/google/common/base/Splitter$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$d;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$f;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$f;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public trimResults()Lcom/google/common/base/Splitter;
    .locals 1

    .line 353
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 368
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Lcom/google/common/base/Splitter;

    iget v1, p0, Lcom/google/common/base/Splitter;->d:I

    iget-object v2, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$f;

    iget-boolean v3, p0, Lcom/google/common/base/Splitter;->b:Z

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$f;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public withKeyValueSeparator(C)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 443
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object p1

    return-object p1
.end method

.method public withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 467
    new-instance v0, Lcom/google/common/base/Splitter$MapSplitter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 432
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object p1

    return-object p1
.end method
