.class Lcom/google/android/material/color/d$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/d$e;

.field public final b:I

.field public final c:[B

.field public final d:[I

.field public final e:[Lcom/google/android/material/color/d$f;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/HashSet;I)V
    .locals 5

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 453
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/material/color/d$j;->c:[B

    .line 458
    iput p3, p0, Lcom/google/android/material/color/d$j;->b:I

    const/4 v2, 0x0

    .line 459
    aput-byte v0, v1, v2

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/color/d$f;

    iput-object v0, p0, Lcom/google/android/material/color/d$j;->e:[Lcom/google/android/material/color/d$f;

    const/4 v0, 0x0

    .line 463
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/d$b;

    .line 465
    iget-object v3, p0, Lcom/google/android/material/color/d$j;->e:[Lcom/google/android/material/color/d$f;

    new-instance v4, Lcom/google/android/material/color/d$f;

    .line 556
    iget v1, v1, Lcom/google/android/material/color/d$b;->e:I

    .line 465
    invoke-direct {v4, v0, v1}, Lcom/google/android/material/color/d$f;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/material/color/d$j;->d:[I

    const/4 p1, 0x0

    :goto_1
    if-ge v2, p3, :cond_2

    .line 471
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/google/android/material/color/d$j;->d:[I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/d$j;->d:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    .line 479
    :cond_2
    new-instance p1, Lcom/google/android/material/color/d$e;

    .line 505
    iget-object p2, p0, Lcom/google/android/material/color/d$j;->d:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    const/16 p3, 0x54

    add-int/2addr p2, p3

    .line 497
    iget-object v0, p0, Lcom/google/android/material/color/d$j;->e:[Lcom/google/android/material/color/d$f;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 p2, 0x201

    .line 479
    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/material/color/d$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/d$j;->a:Lcom/google/android/material/color/d$e;

    return-void
.end method
