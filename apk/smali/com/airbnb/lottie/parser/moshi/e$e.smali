.class final Lcom/airbnb/lottie/parser/moshi/e$e;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/parser/moshi/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/moshi/e;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 839
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$e$a;

    .line 839
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/e$f;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 p1, 0x1

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v0, v2, p1}, Lcom/airbnb/lottie/parser/moshi/e;->c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    :cond_1
    if-eqz v2, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public size()I
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$e;->a:Lcom/airbnb/lottie/parser/moshi/e;

    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    return v0
.end method
