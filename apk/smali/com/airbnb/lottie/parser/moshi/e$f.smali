.class abstract Lcom/airbnb/lottie/parser/moshi/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/airbnb/lottie/parser/moshi/e$g;

.field public b:Lcom/airbnb/lottie/parser/moshi/e$g;

.field public c:I

.field public final synthetic d:Lcom/airbnb/lottie/parser/moshi/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/moshi/e;)V
    .locals 1

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->d:Lcom/airbnb/lottie/parser/moshi/e;

    .line 768
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 770
    iget p1, p1, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 778
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->d:Lcom/airbnb/lottie/parser/moshi/e;

    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eq v0, v2, :cond_1

    .line 781
    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->c:I

    if-ne v1, v2, :cond_0

    .line 784
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 785
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-object v0

    .line 782
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 779
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->d:Lcom/airbnb/lottie/parser/moshi/e;

    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 792
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->d:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-virtual {v2, v0, v1}, Lcom/airbnb/lottie/parser/moshi/e;->c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    const/4 v0, 0x0

    .line 793
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 794
    iget v0, v2, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e$f;->c:I

    return-void

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
