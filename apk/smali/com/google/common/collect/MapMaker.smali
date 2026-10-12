.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lcom/google/common/collect/m3$q;

.field public e:Lcom/google/common/collect/m3$q;

.field public f:Lcom/google/common/base/Equivalence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/google/common/collect/MapMaker;->b:I

    .line 99
    iput v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/m3$q;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/m3$q;

    sget-object v1, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$q;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/m3$q;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/m3$q;

    sget-object v1, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$q;

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 178
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    const/4 v2, 0x1

    .line 182
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    iput p1, p0, Lcom/google/common/collect/MapMaker;->c:I

    return-object p0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/common/collect/MapMaker;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    .line 148
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    iput p1, p0, Lcom/google/common/collect/MapMaker;->b:I

    return-object p0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->a:Z

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    iget v1, p0, Lcom/google/common/collect/MapMaker;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x10

    .line 188
    :cond_0
    iget v3, p0, Lcom/google/common/collect/MapMaker;->c:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x4

    :cond_1
    const/high16 v2, 0x3f400000    # 0.75f

    .line 281
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 283
    :cond_2
    sget-object v0, Lcom/google/common/collect/m3;->j:Lcom/google/common/collect/m3$a;

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    if-ne v0, v1, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 202
    new-instance v0, Lcom/google/common/collect/m3;

    .line 424
    sget-object v1, Lcom/google/common/collect/m3$t$a;->a:Lcom/google/common/collect/m3$t$a;

    .line 202
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    return-object v0

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    if-ne v0, v1, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v2, :cond_4

    .line 206
    new-instance v0, Lcom/google/common/collect/m3;

    .line 521
    sget-object v1, Lcom/google/common/collect/m3$v$a;->a:Lcom/google/common/collect/m3$v$a;

    .line 206
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    return-object v0

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v2, :cond_5

    .line 209
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v1, :cond_5

    .line 210
    new-instance v0, Lcom/google/common/collect/m3;

    .line 794
    sget-object v1, Lcom/google/common/collect/m3$c0$a;->a:Lcom/google/common/collect/m3$c0$a;

    .line 210
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    return-object v0

    .line 212
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v2, :cond_6

    .line 213
    new-instance v0, Lcom/google/common/collect/m3;

    .line 896
    sget-object v1, Lcom/google/common/collect/m3$e0$a;->a:Lcom/google/common/collect/m3$e0$a;

    .line 213
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    return-object v0

    .line 215
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 292
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/google/common/collect/MapMaker;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 294
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 296
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->c:I

    if-eq v1, v2, :cond_1

    .line 297
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/m3$q;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/m3$q;

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_4

    .line 306
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 308
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 205
    sget-object v0, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    .line 209
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/m3$q;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Key strength was already set to %s"

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$q;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->d:Lcom/google/common/collect/m3$q;

    .line 213
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->a:Z

    return-object p0
.end method

.method public weakValues()Lcom/google/common/collect/MapMaker;
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 241
    sget-object v0, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    .line 255
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/m3$q;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Value strength was already set to %s"

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$q;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->e:Lcom/google/common/collect/m3$q;

    .line 259
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->a:Z

    return-object p0
.end method
