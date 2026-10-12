.class final Lcom/google/common/util/concurrent/Futures$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/Futures$f;

.field public final synthetic b:Lcom/google/common/collect/ImmutableList;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Futures$f;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$f;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 862
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$f;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    .line 941
    iget-object v3, v0, Lcom/google/common/util/concurrent/Futures$f;->d:[Lcom/google/common/util/concurrent/ListenableFuture;

    .line 941
    aget-object v4, v3, v2

    const/4 v5, 0x0

    .line 943
    aput-object v5, v3, v2

    .line 944
    iget v2, v0, Lcom/google/common/util/concurrent/Futures$f;->e:I

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 945
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$f;->a()V

    add-int/lit8 v2, v2, 0x1

    .line 948
    iput v2, v0, Lcom/google/common/util/concurrent/Futures$f;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, v0, Lcom/google/common/util/concurrent/Futures$f;->e:I

    :goto_1
    return-void
.end method
