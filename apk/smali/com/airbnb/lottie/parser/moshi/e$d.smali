.class final Lcom/airbnb/lottie/parser/moshi/e$d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/parser/moshi/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/moshi/e;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 812
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    check-cast p1, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 218
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 804
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$d$a;

    .line 804
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/e$f;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .line 816
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 820
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    .line 217
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 201
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 218
    iget-object v4, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v4, p1, :cond_2

    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move-object v3, v2

    :cond_3
    if-nez v3, :cond_4

    :goto_1
    return v1

    :cond_4
    const/4 p1, 0x1

    .line 824
    invoke-virtual {v0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/e;->c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    return p1
.end method

.method public size()I
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    return v0
.end method
