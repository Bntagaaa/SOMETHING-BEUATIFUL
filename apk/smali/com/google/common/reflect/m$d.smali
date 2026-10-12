.class abstract enum Lcom/google/common/reflect/m$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/m$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/m$d$b;

.field public static final enum b:Lcom/google/common/reflect/m$d$c;

.field public static final c:Lcom/google/common/reflect/m$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 543
    new-instance v0, Lcom/google/common/reflect/m$d$a;

    invoke-direct {v0}, Lcom/google/common/reflect/m$d$a;-><init>()V

    .line 561
    new-instance v1, Lcom/google/common/reflect/m$d$b;

    invoke-direct {v1}, Lcom/google/common/reflect/m$d$b;-><init>()V

    sput-object v1, Lcom/google/common/reflect/m$d;->a:Lcom/google/common/reflect/m$d$b;

    .line 576
    new-instance v2, Lcom/google/common/reflect/m$d$c;

    invoke-direct {v2}, Lcom/google/common/reflect/m$d$c;-><init>()V

    sput-object v2, Lcom/google/common/reflect/m$d;->b:Lcom/google/common/reflect/m$d$c;

    .line 606
    new-instance v3, Lcom/google/common/reflect/m$d$d;

    invoke-direct {v3}, Lcom/google/common/reflect/m$d$d;-><init>()V

    .line 631
    const-class v4, Ljava/lang/reflect/AnnotatedElement;

    const-class v5, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    new-instance v0, Lcom/google/common/reflect/m$d$e;

    invoke-direct {v0}, Lcom/google/common/reflect/m$d$e;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/d;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    sput-object v2, Lcom/google/common/reflect/m$d;->c:Lcom/google/common/reflect/m$d;

    return-void

    .line 637
    :cond_0
    sput-object v3, Lcom/google/common/reflect/m$d;->c:Lcom/google/common/reflect/m$d;

    return-void

    .line 639
    :cond_1
    new-instance v2, Lcom/google/common/reflect/m$d$f;

    invoke-direct {v2}, Lcom/google/common/reflect/m$d$f;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/reflect/d;->a()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 640
    sput-object v1, Lcom/google/common/reflect/m$d;->c:Lcom/google/common/reflect/m$d;

    return-void

    .line 642
    :cond_2
    sput-object v0, Lcom/google/common/reflect/m$d;->c:Lcom/google/common/reflect/m$d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 659
    sget-object v0, Lcom/google/common/reflect/m;->a:Lcom/google/common/base/Function;

    .line 172
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 651
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 652
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 653
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/m$d;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
