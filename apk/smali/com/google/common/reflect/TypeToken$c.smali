.class Lcom/google/common/reflect/TypeToken$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[Ljava/lang/reflect/Type;

.field public final b:Z


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$c;->a:[Ljava/lang/reflect/Type;

    .line 1066
    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$c;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Z
    .locals 5

    .line 1070
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$c;->a:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/google/common/reflect/TypeToken$c;->b:Z

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 1071
    invoke-static {v4}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, v3, 0x1

    return p1
.end method
