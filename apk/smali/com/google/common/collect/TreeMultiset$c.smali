.class final Lcom/google/common/collect/TreeMultiset$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Lcom/google/common/collect/TreeMultiset$c;

.field public g:Lcom/google/common/collect/TreeMultiset$c;

.field public h:Lcom/google/common/collect/TreeMultiset$c;

.field public i:Lcom/google/common/collect/TreeMultiset$c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 573
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    .line 574
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    int-to-long p1, p2

    .line 575
    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 576
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 577
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 579
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;
    .locals 7

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    .line 620
    aput v2, p4, v2

    .line 621
    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/TreeMultiset$c;->b(ILjava/lang/Object;)V

    return-object p0

    .line 623
    :cond_0
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 625
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 626
    aget p2, p4, v2

    if-nez p2, :cond_1

    .line 627
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 629
    :cond_1
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 630
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$c;->e:I

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez v0, :cond_7

    .line 632
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_4

    .line 634
    aput v2, p4, v2

    .line 635
    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/TreeMultiset$c;->c(ILjava/lang/Object;)V

    return-object p0

    .line 637
    :cond_4
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 639
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 640
    aget p2, p4, v2

    if-nez p2, :cond_5

    .line 641
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 643
    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 644
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$c;->e:I

    if-ne p1, v3, :cond_6

    :goto_0
    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 648
    :cond_7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p4, p1, v5

    if-gtz p4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 650
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 651
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    .line 652
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    return-object p0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    .line 603
    new-instance v0, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 604
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 58
    sget v1, Lcom/google/common/collect/TreeMultiset;->h:I

    .line 557
    iput-object v0, p2, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p2, v0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    const/4 p2, 0x2

    .line 605
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 606
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 607
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2

    .line 594
    new-instance v0, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 595
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 58
    sget v1, Lcom/google/common/collect/TreeMultiset;->h:I

    .line 557
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object p2, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v0, p2, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    const/4 p2, 0x2

    .line 596
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 597
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 598
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    return-void
.end method

.method public count(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    if-lez v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 589
    :cond_3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    return p1
.end method

.method public final d()I
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 936
    :cond_0
    iget v0, v0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 904
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v2, :cond_1

    goto :goto_1

    .line 936
    :cond_1
    iget v1, v2, Lcom/google/common/collect/TreeMultiset$c;->e:I

    :goto_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->e(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$c;

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-object p0

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->e(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lcom/google/common/collect/TreeMultiset$c;
    .locals 6

    .line 821
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    const/4 v1, 0x0

    .line 822
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    .line 823
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    sget v3, Lcom/google/common/collect/TreeMultiset;->h:I

    .line 557
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 824
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    return-object v0

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v2, :cond_1

    return-object v1

    .line 828
    :cond_1
    iget v3, v1, Lcom/google/common/collect/TreeMultiset$c;->e:I

    iget v4, v2, Lcom/google/common/collect/TreeMultiset$c;->e:I

    if-lt v3, v4, :cond_2

    .line 829
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->h:Lcom/google/common/collect/TreeMultiset$c;

    .line 831
    invoke-virtual {v1, v2}, Lcom/google/common/collect/TreeMultiset$c;->l(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v1

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 832
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 833
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 834
    iget-wide v3, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 835
    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    return-object v0

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 838
    invoke-virtual {v2, v1}, Lcom/google/common/collect/TreeMultiset$c;->m(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 839
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 840
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 841
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 842
    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->g(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$c;

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-object p0

    .line 959
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$c;->g(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/google/common/collect/TreeMultiset$c;
    .locals 2

    .line 886
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->d()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->j()V

    return-object p0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->d()I

    move-result v0

    if-gez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->n()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->o()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    return-object v0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->d()I

    move-result v0

    if-lez v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->o()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->n()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 8

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 872
    sget v1, Lcom/google/common/collect/TreeMultiset;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 557
    :cond_0
    iget v2, v0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 872
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v3, :cond_1

    goto :goto_1

    .line 557
    :cond_1
    iget v1, v3, Lcom/google/common/collect/TreeMultiset$c;->c:I

    :goto_1
    add-int/2addr v2, v1

    .line 872
    iput v2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 873
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    int-to-long v1, v1

    const-wide/16 v4, 0x0

    if-nez v0, :cond_2

    move-wide v6, v4

    goto :goto_2

    .line 932
    :cond_2
    iget-wide v6, v0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    :goto_2
    add-long/2addr v1, v6

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v4, v3, Lcom/google/common/collect/TreeMultiset$c;->d:J

    :goto_3
    add-long/2addr v1, v4

    .line 873
    iput-wide v1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 882
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->j()V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 936
    :cond_0
    iget v0, v0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 877
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v2, :cond_1

    goto :goto_1

    .line 936
    :cond_1
    iget v1, v2, Lcom/google/common/collect/TreeMultiset$c;->e:I

    .line 877
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$c;->e:I

    return-void
.end method

.method public final k(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    .line 662
    aput v1, p4, v1

    return-object p0

    .line 666
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->k(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 668
    aget p1, p4, v1

    if-lez p1, :cond_2

    if-lt p3, p1, :cond_1

    .line 670
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 671
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    goto :goto_0

    .line 673
    :cond_1
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p2, p3

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    return-object p0

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez v0, :cond_8

    .line 678
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_5

    .line 680
    aput v1, p4, v1

    return-object p0

    .line 684
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->k(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 686
    aget p1, p4, v1

    if-lez p1, :cond_7

    if-lt p3, p1, :cond_6

    .line 688
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 689
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    goto :goto_1

    .line 691
    :cond_6
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 694
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 698
    :cond_8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_9

    .line 700
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->f()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p1, p3

    .line 702
    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    .line 703
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    return-object p0
.end method

.method public final l(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    .line 861
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    return-object p1

    .line 863
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->l(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 864
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 865
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$c;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 866
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    .line 849
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    return-object p1

    .line 851
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeMultiset$c;->m(Lcom/google/common/collect/TreeMultiset$c;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 852
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 853
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$c;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 854
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lcom/google/common/collect/TreeMultiset$c;
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 910
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 911
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 912
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 913
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 914
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->i()V

    .line 915
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->j()V

    return-object v0
.end method

.method public final o()Lcom/google/common/collect/TreeMultiset$c;
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 921
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 922
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 923
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 924
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 925
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 926
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->i()V

    .line 927
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->j()V

    return-object v0
.end method

.method public final p(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$c;
    .locals 8

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 765
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v2, :cond_0

    .line 767
    aput v1, p5, v1

    if-nez p3, :cond_b

    if-lez p4, :cond_b

    .line 769
    invoke-virtual {p0, p4, p2}, Lcom/google/common/collect/TreeMultiset$c;->b(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 774
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$c;->p(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    .line 776
    aget p1, v7, v1

    if-ne p1, v5, :cond_3

    if-nez v6, :cond_1

    if-eqz p1, :cond_1

    .line 778
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    goto :goto_0

    :cond_1
    if-lez v6, :cond_2

    if-nez p1, :cond_2

    .line 780
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 782
    :cond_2
    :goto_0
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    sub-int p4, v6, p1

    int-to-long p4, p4

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 784
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    if-lez v0, :cond_9

    .line 786
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v2, :cond_5

    .line 788
    aput v1, v7, v1

    if-nez v5, :cond_b

    if-lez v6, :cond_b

    .line 790
    invoke-virtual {p0, v6, v4}, Lcom/google/common/collect/TreeMultiset$c;->c(ILjava/lang/Object;)V

    return-object p0

    .line 795
    :cond_5
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$c;->p(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    .line 797
    aget p1, v7, v1

    if-ne p1, v5, :cond_8

    if-nez v6, :cond_6

    if-eqz p1, :cond_6

    .line 799
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    goto :goto_1

    :cond_6
    if-lez v6, :cond_7

    if-nez p1, :cond_7

    .line 801
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 803
    :cond_7
    :goto_1
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    sub-int p4, v6, p1

    int-to-long p4, p4

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 805
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 809
    :cond_9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    aput p1, v7, v1

    if-ne v5, p1, :cond_b

    if-nez v6, :cond_a

    .line 812
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->f()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 814
    :cond_a
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    sub-int p4, v6, p1

    int-to-long p4, p4

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 815
    iput v6, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    :cond_b
    return-object p0
.end method

.method public final q(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_0

    .line 714
    aput v1, p4, v1

    if-lez p3, :cond_4

    .line 715
    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/TreeMultiset$c;->b(ILjava/lang/Object;)V

    return-object p0

    .line 718
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->q(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->f:Lcom/google/common/collect/TreeMultiset$c;

    if-nez p3, :cond_1

    .line 720
    aget p1, p4, v1

    if-eqz p1, :cond_1

    .line 721
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    .line 722
    aget p1, p4, v1

    if-nez p1, :cond_2

    .line 723
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 726
    :cond_2
    :goto_0
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 727
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez v0, :cond_8

    .line 729
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez v0, :cond_5

    .line 731
    aput v1, p4, v1

    if-lez p3, :cond_4

    .line 732
    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/TreeMultiset$c;->c(ILjava/lang/Object;)V

    :cond_4
    return-object p0

    .line 735
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$c;->q(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$c;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-nez p3, :cond_6

    .line 737
    aget p1, p4, v1

    if-eqz p1, :cond_6

    .line 738
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    goto :goto_1

    :cond_6
    if-lez p3, :cond_7

    .line 739
    aget p1, p4, v1

    if-nez p1, :cond_7

    .line 740
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$c;->c:I

    .line 743
    :cond_7
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 744
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->h()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 748
    :cond_8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_9

    .line 750
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$c;->f()Lcom/google/common/collect/TreeMultiset$c;

    move-result-object p1

    return-object p1

    .line 752
    :cond_9
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$c;->d:J

    .line 753
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 968
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$c;->b:I

    .line 973
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
