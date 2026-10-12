.class Lcom/google/android/material/color/d$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/d$e;

.field public final b:I

.field public final c:[I

.field public final d:Lcom/google/android/material/color/d$j;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/d$b;

    .line 556
    iget-short v0, v0, Lcom/google/android/material/color/d$b;->c:S

    add-int/lit8 v0, v0, 0x1

    .line 402
    iput v0, p0, Lcom/google/android/material/color/d$k;->b:I

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/d$b;

    .line 556
    iget-short v2, v2, Lcom/google/android/material/color/d$b;->c:S

    .line 405
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_0
    iget v1, p0, Lcom/google/android/material/color/d$k;->b:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/material/color/d$k;->c:[I

    const/4 v1, 0x0

    .line 409
    :goto_1
    iget v2, p0, Lcom/google/android/material/color/d$k;->b:I

    if-ge v1, v2, :cond_2

    .line 410
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/google/android/material/color/d$k;->c:[I

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    .line 415
    :cond_2
    new-instance v1, Lcom/google/android/material/color/d$e;

    mul-int/lit8 v3, v2, 0x4

    const/16 v4, 0x10

    add-int/2addr v3, v4

    const/16 v5, 0x202

    invoke-direct {v1, v5, v4, v3}, Lcom/google/android/material/color/d$e;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/d$k;->a:Lcom/google/android/material/color/d$e;

    .line 417
    new-instance v1, Lcom/google/android/material/color/d$j;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/d$j;-><init>(Ljava/util/List;Ljava/util/HashSet;I)V

    iput-object v1, p0, Lcom/google/android/material/color/d$k;->d:Lcom/google/android/material/color/d$j;

    return-void
.end method
