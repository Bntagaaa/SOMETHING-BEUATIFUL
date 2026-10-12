.class final Lcom/google/common/base/CharMatcher$d;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/google/common/base/CharMatcher$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1280
    new-instance v0, Lcom/google/common/base/CharMatcher$d;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$d;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$d;->b:Lcom/google/common/base/CharMatcher$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1283
    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
