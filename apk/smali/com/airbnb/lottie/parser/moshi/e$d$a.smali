.class Lcom/airbnb/lottie/parser/moshi/e$d$a;
.super Lcom/airbnb/lottie/parser/moshi/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/parser/moshi/e$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/parser/moshi/e<",
        "TK;TV;>.f<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 804
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/e$d$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/e$f;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0

    return-object v0
.end method
