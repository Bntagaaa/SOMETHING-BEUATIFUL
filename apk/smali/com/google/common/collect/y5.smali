.class final Lcom/google/common/collect/y5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/y5$x;,
        Lcom/google/common/collect/y5$g;,
        Lcom/google/common/collect/y5$q;,
        Lcom/google/common/collect/y5$h;,
        Lcom/google/common/collect/y5$n;,
        Lcom/google/common/collect/y5$o;,
        Lcom/google/common/collect/y5$d;,
        Lcom/google/common/collect/y5$b;,
        Lcom/google/common/collect/y5$e;,
        Lcom/google/common/collect/y5$u;,
        Lcom/google/common/collect/y5$k;,
        Lcom/google/common/collect/y5$c;,
        Lcom/google/common/collect/y5$w;,
        Lcom/google/common/collect/y5$t;,
        Lcom/google/common/collect/y5$j;,
        Lcom/google/common/collect/y5$l;,
        Lcom/google/common/collect/y5$m;,
        Lcom/google/common/collect/y5$r;,
        Lcom/google/common/collect/y5$i;,
        Lcom/google/common/collect/y5$v;,
        Lcom/google/common/collect/y5$s;,
        Lcom/google/common/collect/y5$f;,
        Lcom/google/common/collect/y5$p;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 860
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 861
    check-cast p0, Ljava/util/SortedSet;

    .line 246
    new-instance v0, Lcom/google/common/collect/y5$v;

    .line 108
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 847
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 848
    check-cast p1, Ljava/util/SortedSet;

    .line 246
    new-instance v0, Lcom/google/common/collect/y5$v;

    .line 108
    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 850
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 851
    check-cast p1, Ljava/util/Set;

    .line 211
    new-instance v0, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 853
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 854
    check-cast p1, Ljava/util/List;

    invoke-static {p1, p0}, Lcom/google/common/collect/y5;->d(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lcom/google/common/collect/y5$f;

    .line 108
    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1593
    :cond_0
    new-instance v0, Lcom/google/common/collect/y5$h;

    .line 1600
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 305
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/y5$r;

    .line 108
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Lcom/google/common/collect/y5$i;

    .line 108
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
