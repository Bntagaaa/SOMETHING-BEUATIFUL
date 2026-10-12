.class final enum Lcom/google/common/reflect/m$d$d;
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
    const-string v0, "JAVA9"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 579
    sget-object v0, Lcom/google/common/reflect/m$d;->a:Lcom/google/common/reflect/m$d$b;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/m$d$b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 619
    sget-object v0, Lcom/google/common/reflect/m$d;->b:Lcom/google/common/reflect/m$d$c;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/m$d$c;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 573
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
