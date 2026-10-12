.class final Lcom/google/common/base/CharMatcher$o;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/CharMatcher$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1364
    new-instance v0, Lcom/google/common/base/CharMatcher$o;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$o;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$o;->a:Lcom/google/common/base/CharMatcher$o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1362
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1362
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 0

    .line 1368
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1373
    const-string v0, "CharMatcher.javaDigit()"

    return-object v0
.end method
