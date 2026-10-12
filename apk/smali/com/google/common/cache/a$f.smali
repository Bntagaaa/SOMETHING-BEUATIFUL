.class abstract enum Lcom/google/common/cache/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Lcom/google/common/cache/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 437
    new-instance v0, Lcom/google/common/cache/a$f$a;

    invoke-direct {v0}, Lcom/google/common/cache/a$f$a;-><init>()V

    .line 444
    new-instance v1, Lcom/google/common/cache/a$f$b;

    invoke-direct {v1}, Lcom/google/common/cache/a$f$b;-><init>()V

    .line 459
    new-instance v2, Lcom/google/common/cache/a$f$c;

    invoke-direct {v2}, Lcom/google/common/cache/a$f$c;-><init>()V

    .line 474
    new-instance v3, Lcom/google/common/cache/a$f$d;

    invoke-direct {v3}, Lcom/google/common/cache/a$f$d;-><init>()V

    .line 490
    new-instance v4, Lcom/google/common/cache/a$f$e;

    invoke-direct {v4}, Lcom/google/common/cache/a$f$e;-><init>()V

    .line 497
    new-instance v5, Lcom/google/common/cache/a$f$f;

    invoke-direct {v5}, Lcom/google/common/cache/a$f$f;-><init>()V

    .line 512
    new-instance v6, Lcom/google/common/cache/a$f$g;

    invoke-direct {v6}, Lcom/google/common/cache/a$f$g;-><init>()V

    .line 527
    new-instance v7, Lcom/google/common/cache/a$f$h;

    invoke-direct {v7}, Lcom/google/common/cache/a$f$h;-><init>()V

    const/16 v8, 0x8

    .line 551
    new-array v8, v8, [Lcom/google/common/cache/a$f;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Lcom/google/common/cache/a$f;->a:[Lcom/google/common/cache/a$f;

    return-void
.end method

.method public static a(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)V
    .locals 2

    .line 598
    invoke-interface {p0}, Lcom/google/common/cache/f;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/f;->setAccessTime(J)V

    .line 600
    invoke-interface {p0}, Lcom/google/common/cache/f;->getPreviousInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1775
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    .line 601
    invoke-interface {p0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v0

    .line 1775
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1781
    sget-object p1, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1782
    invoke-interface {p0, p1}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1783
    invoke-interface {p0, p1}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    return-void
.end method

.method public static c(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)V
    .locals 2

    .line 610
    invoke-interface {p0}, Lcom/google/common/cache/f;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/f;->setWriteTime(J)V

    .line 612
    invoke-interface {p0}, Lcom/google/common/cache/f;->getPreviousInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1788
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    .line 613
    invoke-interface {p0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v0

    .line 1788
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1794
    sget-object p1, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1795
    invoke-interface {p0, p1}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1796
    invoke-interface {p0, p1}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 1

    .line 591
    invoke-interface {p2}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/f;->getHash()I

    move-result p2

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/google/common/cache/a$f;->d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;
.end method
