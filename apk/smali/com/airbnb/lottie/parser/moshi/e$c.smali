.class Lcom/airbnb/lottie/parser/moshi/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/airbnb/lottie/parser/moshi/e$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$c;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 646
    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 647
    iput-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 648
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    .line 649
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 648
    iget-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_0

    .line 652
    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$c;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-object v0
.end method
