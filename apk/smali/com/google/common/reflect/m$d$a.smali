.class final enum Lcom/google/common/reflect/m$d$a;
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
    const-string v0, "JAVA6"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 546
    new-instance v0, Lcom/google/common/reflect/m$c;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/m$c;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public final d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .line 551
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 553
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 554
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    new-instance p1, Lcom/google/common/reflect/m$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/common/reflect/m$c;-><init>(Ljava/lang/reflect/Type;)V

    :cond_0
    return-object p1
.end method
