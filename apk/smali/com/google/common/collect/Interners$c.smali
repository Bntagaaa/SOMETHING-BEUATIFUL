.class final Lcom/google/common/collect/Interners$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/m3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    .line 122
    iget-object v1, p1, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 122
    :goto_0
    const-string v4, "key equivalence was already set to %s"

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p1, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    .line 124
    iput-boolean v2, p1, Lcom/google/common/collect/MapMaker;->a:Z

    .line 120
    sget-object v0, Lcom/google/common/collect/m3;->j:Lcom/google/common/collect/m3$a;

    .line 231
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 233
    new-instance v0, Lcom/google/common/collect/m3;

    .line 601
    sget-object v1, Lcom/google/common/collect/m3$r$a;->a:Lcom/google/common/collect/m3$r$a;

    .line 233
    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    if-ne v0, v2, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object v0

    if-ne v0, v1, :cond_2

    .line 237
    new-instance v0, Lcom/google/common/collect/m3;

    .line 706
    sget-object v1, Lcom/google/common/collect/m3$a0$a;->a:Lcom/google/common/collect/m3$a0$a;

    .line 237
    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V

    .line 120
    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/m3;

    return-void

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/collect/m3$q;

    move-result-object p1

    if-ne p1, v2, :cond_3

    .line 240
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map cannot have both weak and dummy values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/m3;

    if-nez p1, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    goto :goto_0

    .line 2355
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2356
    invoke-virtual {v0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/m3$o;->d(ILjava/lang/Object;)Lcom/google/common/collect/m3$j;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 129
    invoke-interface {v1}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 136
    :cond_2
    sget-object v1, Lcom/google/common/collect/MapMaker$a;->a:Lcom/google/common/collect/MapMaker$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/m3;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$a;

    if-nez v0, :cond_0

    return-object p1
.end method
