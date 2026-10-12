.class final Lcom/airbnb/lottie/parser/moshi/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 6

    const/4 v0, 0x0

    .line 694
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v0, 0x1

    .line 695
    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 698
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    .line 699
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    sub-int/2addr v1, v0

    .line 700
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    .line 701
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 705
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 706
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    .line 709
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    const/4 v3, 0x2

    if-lez v2, :cond_1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    add-int/2addr p1, v3

    .line 710
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    sub-int/2addr v2, v0

    .line 711
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    .line 712
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    :cond_1
    const/4 p1, 0x4

    .line 728
    :goto_0
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 729
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    if-nez v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 732
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 733
    iget-object v4, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 734
    iget-object v5, v4, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v5, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 735
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 737
    iput-object v4, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 738
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 739
    iget v5, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    add-int/2addr v5, v0

    iput v5, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 740
    iput-object v2, v4, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 741
    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 744
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 745
    iget-object v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 746
    iput-object v4, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 748
    iput-object v1, v4, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 749
    iget v5, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 750
    iput-object v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 751
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 753
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
