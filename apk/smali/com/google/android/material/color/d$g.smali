.class Lcom/google/android/material/color/d$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/d$e;

.field public final b:I

.field public final c:Lcom/google/android/material/color/d$h;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/d$g;->d:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/d$g;->b:I

    .line 136
    new-instance v0, Lcom/google/android/material/color/d$h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 216
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/d$h;-><init>(Z[Ljava/lang/String;)V

    .line 136
    iput-object v0, p0, Lcom/google/android/material/color/d$g;->c:Lcom/google/android/material/color/d$h;

    .line 137
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 40
    sget-object v3, Lcom/google/android/material/color/d;->c:Ljava/util/Comparator;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v3, p0, Lcom/google/android/material/color/d$g;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/material/color/d$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/d$d;

    invoke-direct {v4, v0, v2}, Lcom/google/android/material/color/d$c;-><init>(Lcom/google/android/material/color/d$d;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Lcom/google/android/material/color/d$e;

    .line 156
    iget-object v0, p0, Lcom/google/android/material/color/d$g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/d$c;

    .line 157
    invoke-virtual {v2}, Lcom/google/android/material/color/d$c;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/d$g;->c:Lcom/google/android/material/color/d$h;

    iget v0, v0, Lcom/google/android/material/color/d$h;->l:I

    const/16 v2, 0xc

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 142
    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/material/color/d$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/d$g;->a:Lcom/google/android/material/color/d$e;

    return-void
.end method
