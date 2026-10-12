.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/DelimitedRangesSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ranges/IntRange;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001a*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "next",
        "()Lkotlin/ranges/IntRange;",
        "",
        "hasNext",
        "()Z",
        "",
        "a",
        "I",
        "getNextState",
        "()I",
        "setNextState",
        "(I)V",
        "nextState",
        "b",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "currentStartIndex",
        "c",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextSearchIndex",
        "d",
        "Lkotlin/ranges/IntRange;",
        "getNextItem",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextItem",
        "e",
        "getCounter",
        "setCounter",
        "counter",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lkotlin/ranges/IntRange;

.field public e:I

.field public final synthetic f:Lkotlin/text/DelimitedRangesSequence;


# direct methods
.method public constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 1

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:Lkotlin/text/DelimitedRangesSequence;

    const/4 v0, -0x1

    .line 1191
    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    .line 1192
    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v0

    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->b(II)I

    move-result p1

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    .line 1193
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1198
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1199
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    const/4 v0, 0x0

    .line 1200
    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:I

    add-int/2addr v2, v4

    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:I

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v5

    if-ge v2, v5, :cond_2

    :cond_1
    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 1203
    :cond_2
    new-instance v1, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    .line 1204
    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    goto :goto_0

    .line 1206
    :cond_3
    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    if-nez v2, :cond_4

    .line 1208
    new-instance v1, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    .line 1209
    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    goto :goto_0

    .line 1211
    :cond_4
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1212
    iget v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    iput-object v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    add-int/2addr v0, v2

    .line 1213
    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    .line 1214
    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    .line 1217
    :goto_0
    iput v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    return-void
.end method

.method public final getCounter()I
    .locals 1

    .line 1195
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:I

    return v0
.end method

.method public final getCurrentStartIndex()I
    .locals 1

    .line 1192
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    return v0
.end method

.method public final getNextItem()Lkotlin/ranges/IntRange;
    .locals 1

    .line 1194
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final getNextSearchIndex()I
    .locals 1

    .line 1193
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    return v0
.end method

.method public final getNextState()I
    .locals 1

    .line 1191
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1234
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1235
    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a()V

    .line 1236
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1190
    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->next()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public next()Lkotlin/ranges/IntRange;
    .locals 3

    .line 1222
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1223
    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a()V

    .line 1224
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    if-eqz v0, :cond_1

    .line 1226
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1228
    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    .line 1229
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    return-object v0

    .line 1225
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCounter(I)V
    .locals 0

    .line 1195
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:I

    return-void
.end method

.method public final setCurrentStartIndex(I)V
    .locals 0

    .line 1192
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    return-void
.end method

.method public final setNextItem(Lkotlin/ranges/IntRange;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public final setNextSearchIndex(I)V
    .locals 0

    .line 1193
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    return-void
.end method

.method public final setNextState(I)V
    .locals 0

    .line 1191
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:I

    return-void
.end method
