.class final enum Lcom/google/common/reflect/m$d$b;
.super Lcom/google/common/reflect/m$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 542
    const-string v0, "JAVA7"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 564
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 565
    check-cast p1, Ljava/lang/Class;

    sget-object v0, Lcom/google/common/reflect/m;->a:Lcom/google/common/base/Function;

    const/4 v0, 0x0

    .line 538
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 567
    :cond_0
    new-instance v0, Lcom/google/common/reflect/m$c;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/m$c;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public final d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 573
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
