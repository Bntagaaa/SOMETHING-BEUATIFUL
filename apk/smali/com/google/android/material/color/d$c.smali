.class Lcom/google/android/material/color/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/d$e;

.field public final b:Lcom/google/android/material/color/d$d;

.field public final c:Lcom/google/android/material/color/d$h;

.field public final d:Lcom/google/android/material/color/d$h;

.field public final e:Lcom/google/android/material/color/d$k;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/d$d;Ljava/util/List;)V
    .locals 6

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/android/material/color/d$c;->b:Lcom/google/android/material/color/d$d;

    .line 342
    new-instance p1, Lcom/google/android/material/color/d$h;

    const-string v2, "?3"

    const-string v3, "?4"

    const-string v0, "?1"

    const-string v1, "?2"

    const-string v4, "?5"

    const-string v5, "color"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/color/d$h;-><init>(Z[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/material/color/d$c;->c:Lcom/google/android/material/color/d$h;

    .line 343
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 344
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 345
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/d$b;

    .line 556
    iget-object v0, v0, Lcom/google/android/material/color/d$b;->d:Ljava/lang/String;

    .line 345
    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Lcom/google/android/material/color/d$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/color/d$h;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/d$c;->d:Lcom/google/android/material/color/d$h;

    .line 348
    new-instance p1, Lcom/google/android/material/color/d$k;

    invoke-direct {p1, p2}, Lcom/google/android/material/color/d$k;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/android/material/color/d$c;->e:Lcom/google/android/material/color/d$k;

    .line 350
    new-instance p1, Lcom/google/android/material/color/d$e;

    invoke-virtual {p0}, Lcom/google/android/material/color/d$c;->a()I

    move-result p2

    const/16 v0, 0x200

    const/16 v1, 0x120

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/material/color/d$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/d$c;->a:Lcom/google/android/material/color/d$e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/google/android/material/color/d$c;->c:Lcom/google/android/material/color/d$h;

    iget v0, v0, Lcom/google/android/material/color/d$h;->l:I

    add-int/lit16 v0, v0, 0x120

    .line 293
    iget-object v1, p0, Lcom/google/android/material/color/d$c;->d:Lcom/google/android/material/color/d$h;

    iget v1, v1, Lcom/google/android/material/color/d$h;->l:I

    add-int/2addr v0, v1

    .line 435
    iget-object v1, p0, Lcom/google/android/material/color/d$c;->e:Lcom/google/android/material/color/d$k;

    iget v2, v1, Lcom/google/android/material/color/d$k;->b:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    .line 505
    iget-object v1, v1, Lcom/google/android/material/color/d$k;->d:Lcom/google/android/material/color/d$j;

    iget-object v3, v1, Lcom/google/android/material/color/d$j;->d:[I

    .line 505
    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x54

    .line 497
    iget-object v1, v1, Lcom/google/android/material/color/d$j;->e:[Lcom/google/android/material/color/d$f;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method
