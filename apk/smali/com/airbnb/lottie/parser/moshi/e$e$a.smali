.class Lcom/airbnb/lottie/parser/moshi/e$e$a;
.super Lcom/airbnb/lottie/parser/moshi/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/parser/moshi/e$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/parser/moshi/e<",
        "TK;TV;>.f<TK;>;"
    }
.end annotation


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/e$f;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->f:Ljava/lang/Object;

    return-object v0
.end method
